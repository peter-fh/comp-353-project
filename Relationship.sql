CREATE TABLE Schedule (
    ScheduleID INTEGER PRIMARY KEY AUTO_INCREMENT,
    EmployeeMedicareNumber VARCHAR(255),
    FacilityName VARCHAR(255),
    ScheduleDate DATE,
    StartTime TIME,
    EndTime TIME,
    CONSTRAINT CHK_StartTimeBeforeEndTime CHECK (StartTime < EndTime)
);





/* CREATE TABLE Residency (
    SSN varchar(255),
    Address varchar(255),
    StartDate DATE,
    EndDate date,
    IsPrimary bit,
    FOREIGN KEY (SSN) REFERENCES Person(SSN), 
    FOREIGN KEY (Address) REFERENCES Residence(Address) 
);


-- Ensures a person can only have one primary residence
CREATE TRIGGER EnsureOnePrimaryResidency
BEFORE INSERT OR UPDATE ON Residency
FOR EACH ROW
BEGIN
    DECLARE primaryCount INT;
    
    SELECT COUNT(*) INTO primaryCount
    FROM Residency
    WHERE SSN = NEW.SSN AND IsPrimary = 1;
    
    IF NEW.IsPrimary = 1 AND primaryCount > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Each person can have only one primary residence.';
    END IF;
END; */
