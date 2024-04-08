
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
SELECT * FROM Facility;

-- Inserting sample data into Residence table
INSERT INTO Residence (Address, Type, PostalCode, PhoneNumber, Bedrooms) VALUES
    ('123 Main St', 'Apartment', 'A1A 1A1', '123-456-7890', 2),
    ('456 Elm St', 'House', 'B2B 2B2', '098-765-4321', 3),
    ('789 Oak St', 'Condo', 'C3C 3C3', '456-789-0123', 1),
    ('101 Pine St', 'Townhouse', 'D4D 4D4', '789-012-3456', 4);
SELECT * FROM Residence;

-- Inserting sample data into PostalCode table
INSERT INTO PostalCode (Name, Code) VALUES
    ('Sunrise Hospital', 'A1A 1A1'),
    ('Pinecrest Nursing Home', 'B2B 2B2'),
    ('Maplewood Retirement Home', 'C3C 3C3'),
    ('Willow Gardens Assisted Living', 'D4D 4D4');    
SELECT * FROM PostalCode;

-- Inserting sample data into City table
INSERT INTO City (Code, CityName) VALUES
	('A1A 1A1', 'Metropolis'),
	('B2B 2B2', 'Smalltown'),
	('C3C 3C3', 'Villageville'),
	('D4D 4D4', 'Townsville');
SELECT * FROM City;

-- Inserting sample data into Province table
INSERT INTO Province (CityName, ProvinceName) VALUES
    ('Metropolis', 'StateA'),
    ('Smalltown', 'StateB'),
    ('Villageville', 'StateC'),
    ('Townsville', 'StateD');
SELECT * FROM Province;

-- Inserting sample data into Vaccine table
INSERT INTO Vaccine (SSN, Type, VaccinationDate, Location, Dose) VALUES
    ('1', 'COVID-19', '2023-01-15', 'Sunrise Hospital', 1),
    ('2', 'COVID-19', '2023-02-01', 'Pinecrest Retirement Home', 2),
    ('3', 'Hepatitis B', '2023-03-01', 'Maplewood Retirement Home', 1),
    ('1', 'Diphtheria', '2023-04-01', 'Willow Gardens Assisted Living', 2);
SELECT * FROM Vaccine;

-- Inserting sample data into Infection table
INSERT INTO Infection (SSN, InfectionDate, RecoveryDate, Type) VALUES
    ('1', '2023-03-01', '2023-03-15', 'COVID-19'),
    ('2', '2023-03-10', '2023-03-25', 'COVID-19'),
    ('3', '2023-04-01', '2023-04-15', 'Hepatitis B'),
    ('1', '2023-05-01', '2023-05-15', 'Diphtheria');

SELECT * FROM Infection;

-- Inserting sample data into Residency table
INSERT INTO Residency (SSN, Address, StartDate, EndDate, IsPrimary) VALUES
    ('1', '123 Main St', '2023-03-01', '2023-03-15', 1),
    ('2', '456 Elm St', '2023-03-10', '2023-03-25', 1),
    ('3', '789 Oak St', '2023-04-01', '2023-04-15', 1),
    ('1', '101 Pine St', '2023-05-01', '2023-05-15', 1);
SELECT * FROM Residency;

-- Inserting sample data into Schedule table
INSERT INTO Schedule (EmployeeMedicareNumber, FacilityName, ScheduleDate, StartTime, EndTime) VALUES
('EMP001', 'Sunrise Hospital', '2024-04-08', '08:00:00', '16:00:00'),
('EMP002', 'Pinecrest Nursing Home', '2024-04-09', '09:00:00', '17:00:00'),
('EMP001', 'Sunrise Hospital', '2024-04-10', '08:30:00', '15:30:00'),
('EMP002', 'Pinecrest Nursing Home', '2024-04-11', '09:30:00', '17:30:00'); 
SELECT * FROM Schedule;
