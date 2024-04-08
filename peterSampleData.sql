
-- Inserting sample data into Person table
INSERT INTO Person (SSN, Name, Relationship) VALUES
    ('1', 'John Doe', NULL),
    ('2', 'Jane Doe', NULL),
    ('3', 'Alice Smith', NULL);
SELECT * FROM Employee;

-- Inserting sample data into Employee table
INSERT INTO Employee (SSN, MedicareNumber, Email) VALUES
    ('1', 'EMP001', 'John.Doe@email.com'),
    ('2', 'EMP002', 'Jane.Doe@email.com'),
    ('3', 'EMP003', 'Alice.Smith@email.com');

SELECT * FROM Employee;

-- Inserting sample data into Facility table
INSERT INTO Facility (Name, Type, Address, Capacity, Website, Phone) VALUES
    ('Sunrise Hospital', 'Hospital', '123 Main St', 100, 'www.sunrisehospital.com', '123-456-7890'),
    ('Pinecrest Nursing Home', 'Nursing Home', '456 Elm St', 50, 'www.pinecrestnursinghome.com', '098-765-4321'),
    ('Maplewood Retirement Home', 'Retirement Home', '789 Oak St', 75, 'www.maplewoodretirementhome.com', '456-789-0123'),
    ('Willow Gardens Assisted Living', 'Assisted Living', '101 Pine St', 25, 'www.willowgardensassistedliving.com', '789-012-3456');

-- Inserting sample data into Residence table
INSERT INTO Residence (Address, Type, PostalCode, PhoneNumber, Bedrooms) VALUES
    ('123 Main St', 'Apartment', 'A1A 1A1', '123-456-7890', 2),
    ('456 Elm St', 'House', 'B2B 2B2', '098-765-4321', 3),
    ('789 Oak St', 'Condo', 'C3C 3C3', '456-789-0123', 1),
    ('101 Pine St', 'Townhouse', 'D4D 4D4', '789-012-3456', 4);

-- Inserting sample data into PostalCode table
INSERT INTO PostalCode (Name, Code) VALUES
    

-- Inserting sample data into City table
INSERT INTO City (CityName, Code, Address) VALUES

-- Inserting sample data into Province table
INSERT INTO Province (ProvinceName, CityName) VALUES

-- Inserting sample data into Vaccine table
INSERT INTO Vaccine (SSN, Type, VaccinationDate, Location, Dose) VALUES

-- Inserting sample data into Infection table
INSERT INTO Infection (SSN, InfectionDate, RecoveryDate, Type) VALUES

-- Inserting sample data into Residency table
INSERT INTO Residency (SSN, Address, StartDate, EndDate, IsPrimary) VALUES

-- Inserting sample data into Schedule table
INSERT INTO Schedule (EmployeeMedicareNumber, FacilityName, ScheduleDate, StartTime, EndTime) VALUES
('EMP001', 'Sunrise Hospital', '2024-04-08', '08:00:00', '16:00:00'),
('EMP002', 'Pinecrest Nursing Home', '2024-04-09', '09:00:00', '17:00:00'),
('EMP001', 'Sunrise Hospital', '2024-04-10', '08:30:00', '15:30:00'),
('EMP002', 'Pinecrest Nursing Home', '2024-04-11', '09:30:00', '17:30:00'); */
