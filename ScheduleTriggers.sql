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
    
END //


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

    IF infected < 1 THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Employee is infected and cannot be scheduled';
	END IF;
    
END //

DELIMITER ;
