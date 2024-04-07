CREATE TABLE Schedule (
    ScheduleID INTEGER PRIMARY KEY AUTO_INCREMENT,
    EmployeeMedicareNumber VARCHAR(255),
    FacilityName VARCHAR(255),
    ScheduleDate DATE,
    StartTime TIME,
    EndTime TIME,
    CONSTRAINT CHK_StartTimeBeforeEndTime CHECK (StartTime < EndTime)
);

DELIMITER //

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

DELIMITER ;
/* CREATE TABLE Schedule (
    ScheduleID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeMedicareNumber VARCHAR(255),
    FacilityName VARCHAR(255),
    ScheduleDate DATE,
    StartTime TIME,
    EndTime TIME,
    CONSTRAINT CHK_StartTimeBeforeEndTime CHECK (StartTime < EndTime),
    CONSTRAINT CHK_NoOverlappingSchedules 
        CHECK (NOT EXISTS (
            SELECT 1
            FROM Schedule s2
            WHERE s2.EmployeeMedicareNumber = Schedule.EmployeeMedicareNumber
              AND s2.FacilityName = Schedule.FacilityName
              AND s2.ScheduleDate = Schedule.ScheduleDate
              AND (
                  (s2.StartTime BETWEEN Schedule.StartTime AND Schedule.EndTime)
                  OR (s2.EndTime BETWEEN Schedule.StartTime AND Schedule.EndTime)
                  OR (Schedule.StartTime BETWEEN s2.StartTime AND s2.EndTime)
              )
        )),
    CONSTRAINT CHK_MinimumDurationBetweenSchedules 
        CHECK (NOT EXISTS (
            SELECT 1
            FROM Schedule s2
            WHERE s2.EmployeeMedicareNumber = Schedule.EmployeeMedicareNumber
              AND s2.ScheduleDate = Schedule.ScheduleDate
              AND ABS(TIMESTAMPDIFF(HOUR, s2.StartTime, Schedule.StartTime)) < 2
        )),
    CONSTRAINT CHK_InfectionStatus 
        CHECK (
            NOT EXISTS (
                SELECT 1
                FROM Infection i
                WHERE i.SSN = (
                    SELECT SSN
                    FROM Employee
                    WHERE MedicareNumber = Schedule.EmployeeMedicareNumber
                )
                AND i.InfectionDate >= DATE_SUB(Schedule.ScheduleDate, INTERVAL 14 DAY)
                AND i.Type = 'COVID-19'
            )
        ),
    CONSTRAINT CHK_VaccinationStatus 
        CHECK (
            EXISTS (
                SELECT 1
                FROM Vaccine v
                WHERE v.SSN = (
                    SELECT SSN
                    FROM Employee
                    WHERE MedicareNumber = Schedule.EmployeeMedicareNumber
                )
                AND v.VaccinationDate >= DATE_SUB(Schedule.ScheduleDate, INTERVAL 6 MONTH)
                AND v.Type = 'COVID-19'
            )
        )
);
*/


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
