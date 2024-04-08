DELIMITER //

CREATE TRIGGER email_infected 
AFTER INSERT ON Infection 
FOR EACH ROW
BEGIN 
    DECLARE infected_email VARCHAR(255);
    SELECT e.Email INTO infected_medicare FROM Employee e WHERE e.SSN = NEW.SSN;

    INSERT INTO EmailLog (Recipient, Subject, Body, SendDate, Sent)
    VALUES (infected_email, 'Infected', 'You have been infected!', CURDATE(), 0);

END//



DELIMITER ;


