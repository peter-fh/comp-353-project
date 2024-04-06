-- Sample data for Person table
INSERT INTO Person (SSN, Name, Relationship) VALUES
('123456789', 'John Doe', 'Self'),
('987654321', 'Jane Smith', 'Spouse'),
('111222333', 'Alice Johnson', 'Child');

-- Sample data for Employee table
INSERT INTO Employee (SSN, MedicareNumber) VALUES
('123456789', 'EMP123'),
('987654321', 'EMP456'),
('111222333', 'EMP789');

-- Sample data for Facility table
INSERT INTO Facility (Name, Type, Address, Capacity, Website, Phone) VALUES
('Hospital A', 'Hospital', '123 Main St', 100, 'www.hospitala.com', '123-456-7890'),
('Clinic B', 'Clinic', '456 Elm St', 50, 'www.clinicb.com', '987-654-3210');

-- Sample data for PostalCode table
INSERT INTO PostalCode (Code, Name) VALUES
('12345', 'Hospital A'),
('67890', 'Clinic B');

-- Sample data for City table
INSERT INTO City (CityName, Code) VALUES
('City A', '12345'),
('City B', '67890');

-- Sample data for Province table
INSERT INTO Province (ProvinceName) VALUES
('Province X'),
('Province Y');

-- Sample data for Vaccine table
INSERT INTO Vaccine (SSN, Type, VaccinationDate, Location, Dose) VALUES
('123456789', 'COVID-19', '2023-01-15', 'Hospital A', 'First'),
('987654321', 'Flu', '2023-02-20', 'Clinic B', 'First'),
('111222333', 'COVID-19', '2023-03-25', 'Hospital A', 'Second');

-- Sample data for Infection table
INSERT INTO Infection (SSN, InfectionDate, RecoveryDate, Type) VALUES
('123456789', '2022-05-10', '2022-05-25', 'Cold'),
('987654321', '2022-07-15', '2022-08-05', 'Flu'),
('111222333', '2022-09-20', '2022-10-10', 'COVID-19');

-- Sample data for Residence table
INSERT INTO Residence (Address, Type, PostalCode, PhoneNumber, Bedrooms) VALUES
('123 Main St', 'House', '12345', '111-222-3333', 3),
('456 Elm St', 'Apartment', '67890', '444-555-6666', 2);

-- Sample data for Employment table
INSERT INTO Employment (MedicareNumber, HospitalName, Role, StartDate, EndDate) VALUES
('EMP123', 'Hospital A', 'Nurse', '2023-01-01', NULL),
('EMP456', 'Clinic B', 'Doctor', '2023-02-01', NULL),
('EMP789', 'Hospital A', 'Technician', '2023-03-01', NULL);

-- Sample data for Residency table
INSERT INTO Residency (SSN, Address, StartDate, EndDate) VALUES
('123456789', '123 Main St', '2022-01-01', NULL),
('987654321', '456 Elm St', '2022-01-01', NULL),
('111222333', '123 Main St', '2022-01-01', NULL);
