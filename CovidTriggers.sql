DELIMITER //
CREATE TRIGGER cancel_assignments
AFTER INSERT ON Infection 
FOR EACH ROW
BEGIN 
    DECLARE infected_medicare INT;
    SELECT MedicareNumber INTO infected_medicare FROM Employee e WHERE e.SSN = NEW.SSN;

    DELETE FROM Schedule s
    WHERE s.MedicareNumber = infected_medicare
    AND s.ScheduleDate BETWEEN NEW.InfectionDate AND DATE_ADD(NEW.InfectionDate, INTERVAL 14 DAY);
END//



DELIMITER ;
