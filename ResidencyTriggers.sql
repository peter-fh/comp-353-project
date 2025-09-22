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
