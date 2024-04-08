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

