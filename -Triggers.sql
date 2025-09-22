DELIMITER //

CREATE PROCEDURE process_infection(IN infected_medicare VARCHAR(255))
BEGIN
    CREATE TEMPORARY TABLE schedule_of_infected(
	ScheduleDate DATE,
	StartTime TIME,
	EndTime TIME
    );

    insert into schedule_of_infected 
	select distinct scheduledate, starttime, endtime
	from schedule s
	where s.employeemedicarenumber = infected_medicare;

    CREATE TEMPORARY TABLE notified_employees(
	MedicareNumber VARCHAR(255)
    );

    INSERT INTO notified_employees
	SELECT DISTINCT s.EmployeeMedicareNumber 
	FROM Schedule s
	WHERE s.ScheduleDate IN (
	    SELECT ScheduleDate FROM schedule_of_infected i
	    WHERE s.StartTime BETWEEN i.StartTime AND i.EndTime
	    OR s.EndTime BETWEEN i.StartTime AND i.EndTime
	);

    INSERT INTO EmailLog (Recipient, Subject, Body, SendDate, Sent)
	SELECT DISTINCT e.Email, 'COVID-19 Exposure', 'You have been exposed to COVID-19. Please get tested and self-isolate.', CURDATE(), 0
    FROM notified_employees JOIN Employee e ON notified_employees.MedicareNumber = e.MedicareNumber;

    DROP TEMPORARY TABLE schedule_of_infected;
    DROP TEMPORARY TABLE notified_employees;
END//


CREATE TRIGGER email_infections
AFTER INSERT ON Infection 
FOR EACH ROW
BEGIN 
    DECLARE infected_medicare VARCHAR(255);
    SELECT MedicareNumber INTO infected_medicare FROM Employee e WHERE e.SSN = NEW.SSN;

    CALL process_infection(infected_medicare);
END//

DELIMITER ;

DELIMITER //

CREATE TRIGGER cancel_assignments
AFTER INSERT ON Infection 
FOR EACH ROW
BEGIN 
    DECLARE infected_medicare VARCHAR(255);
    SELECT e.MedicareNumber INTO infected_medicare FROM Employee e WHERE e.SSN = NEW.SSN;

    DELETE FROM Schedule
    WHERE EmployeeMedicareNumber = (SELECT e.MedicareNumber FROM Employee e WHERE e.SSN = NEW.SSN);

END//

DELIMITER ;


DELIMITER //

CREATE TRIGGER EnsureOnePrimaryResidencyInsert
BEFORE INSERT Residency
FOR EACH ROW
BEGIN
    
    IF NEW.IsPrimary = 1 AND (
    SELECT COUNT(*) INTO primaryCount
    FROM Residency
    WHERE SSN = NEW.SSN AND IsPrimary = 1;) THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Each person can have only one primary residence.';
    END IF;
END//

DELIMITER ;


DELIMITER //

CREATE TRIGGER schedule_advance_limit 
BEFORE INSERT ON Schedule
FOR EACH ROW
BEGIN
    IF NEW.ScheduleDate < CURDATE() OR NEW.ScheduleDate > ADDDATE(CURDATE(), INTERVAL 4 WEEK) THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Cannot schedule in the past';
	END IF;
END

//


CREATE TRIGGER ScheduleInfectionTrigger
BEFORE INSERT ON Schedule
FOR EACH ROW
BEGIN
    DECLARE infected INT;
    DECLARE new_ssn VARCHAR(255);
    SELECT SSN INTO new_ssn FROM Employee WHERE MedicareNumber = NEW.EmployeeMedicareNumber;

    SELECT COUNT(*) INTO infected 
    FROM Infections  
    WHERE SSN = new_ssn 
    AND NEW.ScheduleDate BETWEEN InfectionDate AND DATE_ADD(InfectionDate, INTERVAL 14 DAY);

    IF infected > 0 THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Employee is infected and cannot be scheduled';
	END IF;
    
END 

//


CREATE TRIGGER no_overlapping_schedules
BEFORE INSERT ON Schedule
FOR EACH ROW
BEGIN
    DECLARE overlapping_count INT;

    -- Count the number of overlapping schedules
    SELECT COUNT(*)
    INTO overlapping_count
    FROM Schedule s
    WHERE s.EmployeeMedicareNumber = NEW.EmployeeMedicareNumber
      AND s.FacilityName = NEW.FacilityName
      AND s.ScheduleDate = NEW.ScheduleDate
      AND (
          (s.StartTime BETWEEN NEW.StartTime AND NEW.EndTime)
          OR (s.EndTime BETWEEN NEW.StartTime AND NEW.EndTime)
          OR (NEW.StartTime BETWEEN s.StartTime AND s.EndTime)
	    OR (SUBTIME(NEW.StartTime, '02:00:00') BETWEEN s.StartTime AND s.EndTime)
	OR (ADDTIME(NEW.EndTime, '02:00:00') BETWEEN s.StartTime AND s.EndTime)
      );

    -- If overlapping schedules found, raise error
    IF overlapping_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Overlapping schedules are not allowed';
    END IF;
END;
//



CREATE TRIGGER ScheduleVaccineTrigger
BEFORE INSERT ON Schedule
FOR EACH ROW
BEGIN
    DECLARE vaccine_count INT;
    DECLARE new_ssn VARCHAR(255);
    SELECT SSN INTO new_ssn FROM Employee WHERE MedicareNumber = NEW.EmployeeMedicareNumber;

    SELECT COUNT(*) INTO vaccine_count 
    FROM Vaccine v
	WHERE v.SSN = new_ssn 
	AND NEW.ScheduleDate <= DATE_ADD(v.VaccinationDate, INTERVAL 6 MONTH)
	AND v.Type = 'COVID-19';

    IF vaccine_count < 1 THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Employee is not vaccinated and cannot be scheduled';
	END IF;
    
END //

DELIMITER ;
