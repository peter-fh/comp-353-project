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


