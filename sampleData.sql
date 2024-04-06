-- Inserting sample data into Person table
INSERT INTO Person (SSN, Name, Relationship) VALUES
('123-45-6789', 'John Doe', 'Self'),
('987-65-4321', 'Jane Doe', 'Spouse'),
('456-78-9012', 'Alice Smith', 'Dependent');

-- Inserting sample data into Employee table
INSERT INTO Employee (SSN, MedicareNumber) VALUES
('123-45-6789', 'EMP001'),
('987-65-4321', 'EMP002');

-- Inserting sample data into Facility table
INSERT INTO Facility (Name, Type, Address, Capacity, Website, Phone) VALUES
('Sunrise Hospital', 'Hospital', '123 Main St', 200, 'www.sunrisehospital.com', '+1 (123) 456-7890'),
('Pinecrest Nursing Home', 'Nursing Home', '456 Oak Ave', 100, 'www.pinecrestnursinghome.com', '+1 (987) 654-3210');

-- Inserting sample data into Residence table
INSERT INTO Residence (Address, Type, PostalCode, PhoneNumber, Bedrooms) VALUES
('123 Main St', 'House', '12345', '+1 (555) 123-4567', 3),
('456 Oak Ave', 'Apartment', '67890', '+1 (555) 987-6543', 2);

-- Inserting sample data into PostalCode table
INSERT INTO PostalCode (Name, Code) VALUES
('Sunrise Hospital', '12345'),
('Pinecrest Nursing Home', '67890');

-- Inserting sample data into City table
INSERT INTO City (CityName, Code, Address) VALUES
('Metropolis', '12345', '123 Main St'),
('Smalltown', '67890', '456 Oak Ave');

-- Inserting sample data into Province table
INSERT INTO Province (ProvinceName, CityName) VALUES
('StateA', 'Metropolis'),
('StateB', 'Smalltown');

-- Inserting sample data into Vaccine table
INSERT INTO Vaccine (SSN, Type, VaccinationDate, Location, Dose) VALUES
('123-45-6789', 'COVID-19', '2023-01-15', 'Sunrise Hospital', '1st'),
('987-65-4321', 'COVID-19', '2023-02-20', 'Pinecrest Nursing Home', '1st');

-- Inserting sample data into Infection table
INSERT INTO Infection (SSN, InfectionDate, RecoveryDate, Type) VALUES
('123-45-6789', '2023-03-01', '2023-03-15', 'COVID-19'),
('987-65-4321', '2023-03-10', '2023-03-25', 'COVID-19');

-- Inserting sample data into Residency table
INSERT INTO Residency (SSN, Address, StartDate, EndDate, IsPrimary) VALUES
('123-45-6789', '123 Main St', '2020-01-01', NULL, 1),
('987-65-4321', '456 Oak Ave', '2021-05-01', NULL, 1);

-- Inserting sample data into Schedule table
INSERT INTO Schedule (EmployeeMedicareNumber, FacilityName, ScheduleDate, StartTime, EndTime) VALUES
('EMP001', 'Sunrise Hospital', '2024-04-08', '08:00:00', '16:00:00'),
('EMP002', 'Pinecrest Nursing Home', '2024-04-09', '09:00:00', '17:00:00'),
('EMP001', 'Sunrise Hospital', '2024-04-10', '08:30:00', '15:30:00'),
('EMP002', 'Pinecrest Nursing Home', '2024-04-11', '09:30:00', '17:30:00');
