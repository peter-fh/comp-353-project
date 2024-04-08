DELIMITER //

CREATE TRIGGER EnsureOnePrimaryResidency
BEFORE INSERT OR UPDATE ON Residency
FOR EACH ROW
BEGIN
    DECLARE primaryCount INT;
    
    SELECT COUNT(*) INTO primaryCount
    FROM Residency
    WHERE SSN = NEW.SSN AND IsPrimary = 1;
    
    IF NEW.IsPrimary = 1 AND primaryCount > 0 THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Each person can have only one primary residence.';
    END IF;
END//


DELIMITER ;
