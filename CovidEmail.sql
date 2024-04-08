DELIMITER //

CREATE PROCEDURE process_infection(IN infected_medicaire VARCHAR(255))
BEGIN
    CREATE TEMPORARY TABLE infected_schedule(
	ScheduleDate DATE,
	StartTime TIME,
	EndTime TIME
    );

    INSERT INTO infected_schedule
	SELECT DISTINCT ScheduleDate, StartTime, EndTime
	FROM Schedule s
	WHERE s.MedicareNumber = infected_medicare;

    CREATE TEMPORARY TABLE notified_employees(
	MedicareNumber VARCHAR(255)
    );

    INSERT INTO notified_employees
	SELECT DISTINCT s.MedicareNumber 
	FROM Schedule s
	WHERE s.ScheduleDate IN (
	    SELECT ScheduleDate FROM infected_schedule i
	    WHERE s.StartTime BETWEEN i.StartTime AND i.EndTime
	    OR s.EndTime BETWEEN i.StartTime AND i.EndTime
	);

    INSERT INTO EmailLog (Recipient, Subject, Body, SendDate, Sent)
	SELECT DISTINCT e.Email, 'COVID-19 Exposure', 'You have been exposed to COVID-19. Please get tested and self-isolate.', CURDATE(), 0
    FROM notified_employees JOIN Employee e ON notified_employees.MedicareNumber = e.MedicareNumber;
END//


CREATE TRIGGER email_infections
AFTER INSERT ON Infection 
FOR EACH ROW
BEGIN 
    DECLARE infected_medicare INT;
    SELECT MedicareNumber INTO infected_medicare FROM Employee e WHERE e.SSN = NEW.SSN;

    CALL process_infection(infected_medicare);
END//

DELIMITER ;

