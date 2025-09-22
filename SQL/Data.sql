-- Sample data for Person table
INSERT INTO Person (SSN, Name, Relationship) VALUES
('111-11-1111', 'John Doe', 'Father'),
('222-22-2222', 'Jane Smith', 'Mother'),
('333-33-3333', 'Alice Johnson', 'Daughter'),
('444-44-4444', 'Bob Brown', 'Son'),
('555-55-5555', 'Sarah Johnson', 'Mother'),
('666-66-6666', 'Michael Smith', 'Father'),
('777-77-7777', 'Emily Brown', 'Daughter'),
('888-88-8888', 'David Jones', 'Son'),
('999-99-9999', 'Evelyn Lee', 'Mother'),
('101-01-1010', 'James White', 'Father'),
('121-21-2121', 'Logan Taylor', 'Son'),
('131-31-3131', 'Olivia Martinez', 'Mother'),
('141-41-4141', 'William Garcia', 'Father'),
('151-51-5151', 'Sophia Rodriguez', 'Daughter'),
('161-61-6161', 'Daniel Hernandez', 'Son'),
('171-71-7171', 'Isabella Lopez', 'Mother'),
('181-81-8181', 'Alexander Gonzalez', 'Father'),
('191-91-9191', 'Mia Wilson', 'Daughter'),
('202-02-0202', 'Michael Davis', 'Son'),
('212-12-1212', 'Ava Martinez', 'Mother'),
('222-22-2222', 'Elijah Martinez', 'Father'),
('232-32-3232', 'Charlotte Nguyen', 'Daughter');

-- Sample data for Employee table
INSERT INTO Employee (SSN, MedicareNumber) VALUES
('111-11-1111', 'E111'),
('222-22-2222', 'E222'),
('333-33-3333', 'E333'),
('444-44-4444', 'E444'),
('555-55-5555', 'E777'),
('666-66-6666', 'E898'),
('777-77-7777', 'E999'),
('888-88-8888', 'E555'),
('131-31-3131', 'E131'),
('141-41-4141', 'E141'),
('151-51-5151', 'E151'),
('161-61-6161', 'E161'),
('171-71-7171', 'E171'),
('181-81-8181', 'E181'),
('191-91-9191', 'E191'),
('202-02-0202', 'E202'),
('212-12-1212', 'E212'),
('232-32-3232', 'E232');

-- Sample data for Facility table
INSERT INTO Facility (Name, Type, Address, Capacity, Website, Phone) VALUES
('Hospital A', 'Hospital', '154 Main St', 100, 'www.hospitalA.com', '123-456-7890'),
('Clinic B', 'Clinic', '540 Elm St', 50, 'www.clinicB.com', '987-654-3210'),
('Hospital C', 'Hospital', '396 Oak St', 150, 'www.hospitalC.com', '111-222-3333'),
('Clinic D', 'Clinic', '012 Pine St', 75, 'www.clinicD.com', '444-555-6666');

-- Sample data for Residence table
INSERT INTO Residence (Address, Type, PostalCode, PhoneNumber, Bedrooms) VALUES
('123 Main St', 'House', '12345', '555-1234', 3),
('456 Elm St', 'Apartment', '54321', '555-5678', 2),
('789 Oak St', 'House', '67890', '555-7890', 4),
('012 Pine St', 'Apartment', '09876', '555-9876', 1),
('234 Oak St', 'House', '56789', '555-5678', 3),
('345 Elm St', 'Apartment', '67890', '555-6789', 2),
('456 Maple St', 'House', '78901', '555-7890', 4),
('567 Pine St', 'Apartment', '89012', '555-8901', 1),
('678 Birch St', 'House', '90123', '555-9012', 3),
('789 Oak St', 'House', '67890', '555-7890', 4),
('234 Oak St', 'House', '56789', '555-5678', 3),
('456 Maple St', 'House', '78901', '555-7890', 4),
('678 Birch St', 'House', '90123', '555-9012', 3),
('789 Elm St', 'Apartment', '34567', '555-1234', 2),
('123 Pine St', 'House', '23456', '555-6789', 3),
('890 Cedar St', 'Apartment', '45678', '555-9876', 1),
('456 Oak St', 'House', '56789', '555-3456', 2),
('567 Maple St', 'Apartment', '67890', '555-2345', 2),
('789 Pine St', 'House', '78901', '555-4567', 4);

-- Sample data for PostalCode table
INSERT INTO PostalCode (Name, Code) VALUES
('City A', '12345'),
('City B', '54321'),
('City C', '67890'),
('City D', '09876'),
('City B', '56789'),
('City C', '78901'),
('City D', '90123'),
('City A', '34567'),
('City B', '23456'),
('City C', '45678'),
('City A', '89012');

-- Sample data for City table
INSERT INTO City (CityName, Code, Address) VALUES
('City A', '12345', '123 Main St'),
('City B', '54321', '456 Elm St'),
('City C', '67890', '789 Oak St'),
('City D', '09876', '012 Pine St'),
('City A', '56789', '234 Oak St'),
('City A', '56789', '456 Oak St'),
('City C', '78901', '456 Maple St'),
('City C', '78901', '789 Pine St'),
('City D', '90123', '678 Birch St'),
('City A', '34567', '789 Elm St'),
('City B', '23456', '123 Pine St'),
('City C', '45678', '890 Cedar St'),
('City A', '89012', '567 Pine St');

-- Sample data for Province table
INSERT INTO Province (ProvinceName, CityName) VALUES
('Province X', 'City A'),
('Province Y', 'City B'),
('Province Z', 'City C'),
('Province W', 'City D');

-- Sample data for Vaccine table
INSERT INTO Vaccine (SSN, Type, VaccinationDate, Location, Dose) VALUES
('111-11-1111', 'COVID-19', '2024-03-15', 'City Hospital', 1),
('222-22-2222', 'COVID-19', '2024-03-15', 'Community Center', 1),
('333-33-3333', 'COVID-19', '2024-03-15', 'School Clinic', 1),
('444-44-4444', 'COVID-19', '2024-03-15', 'City Hospital', 1),
('555-55-5555', 'COVID-19', '2024-03-15', 'Community Center', 1),
('666-66-6666', 'COVID-19', '2024-03-15', 'School Clinic', 1),
('777-77-7777', 'COVID-19', '2024-03-15', 'City Hospital', 1),
('888-88-8888', 'COVID-19', '2024-03-15', 'Community Center', 1),
('999-99-9999', 'COVID-19', '2024-03-15', 'School Clinic', 1),
('101-01-1010', 'COVID-19', '2024-03-15', 'City Hospital', 1),
('121-21-2121', 'COVID-19', '2024-03-15', 'Community Center', 1),
('131-31-3131', 'COVID-19', '2024-03-15', 'City Hospital', 1),
('141-41-4141', 'COVID-19', '2024-03-15', 'Community Center', 1),
('151-51-5151', 'COVID-19', '2024-03-15', 'School Clinic', 1),
('161-61-6161', 'COVID-19', '2024-03-15', 'City Hospital', 1),
('171-71-7171', 'COVID-19', '2024-03-15', 'Community Center', 1),
('181-81-8181', 'COVID-19', '2024-03-15', 'School Clinic', 1),
('191-91-9191', 'COVID-19', '2024-03-15', 'City Hospital', 1),
('202-02-0202', 'COVID-19', '2024-03-15', 'Community Center', 1),
('212-12-1212', 'COVID-19', '2024-03-15', 'School Clinic', 1),
('232-32-3232', 'COVID-19', '2024-03-15', 'City Hospital', 1);

-- Sample data for Infection table
INSERT INTO Infection (SSN, InfectionDate, RecoveryDate, Type) VALUES
('111-11-1111', '2023-03-10', '2023-03-25', 'COVID-19'),
('222-22-2222', '2023-04-05', '2023-04-20', 'Cold flu'),
('333-33-3333', '2023-04-15', '2023-05-01', 'COVID-19'),
('444-44-4444', '2023-03-20', '2023-04-05', 'COVID-19'),
('555-55-5555', '2023-03-25', '2023-04-10', 'Cold flu'),
('666-66-6666', '2023-04-01', '2023-04-16', 'COVID-19'),
('777-77-7777', '2023-04-10', '2023-04-25', 'COVID-19'),
('888-88-8888', '2023-04-05', '2023-04-20', 'Cold flu'),
('999-99-9999', '2023-03-30', '2023-04-15', 'COVID-19'),
('101-01-1010', '2023-04-20', '2023-05-05', 'COVID-19'),
('111-11-1111', '2024-04-05', null, 'COVID-19'),
('222-22-2222', '2024-04-13', null, 'COVID-19'),
('555-55-5555', '2024-04-12', null, 'COVID-19'),
('121-21-2121', '2023-04-25', '2023-05-10', 'COVID-19'),
('131-31-3131', '2023-03-10', '2023-03-25', 'COVID-19'),
('141-41-4141', '2023-04-05', '2023-04-20', 'Cold flu'),
('151-51-5151', '2023-04-15', '2023-05-01', 'COVID-19'),
('161-61-6161', '2023-03-20', '2023-04-05', 'COVID-19'),
('171-71-7171', '2023-03-25', '2023-04-10', 'Cold flu'),
('181-81-8181', '2024-04-05', null, 'COVID-19'),
('191-91-9191', '2023-04-10', '2023-04-25', 'COVID-19'),
('202-02-0202', '2024-04-05', null, 'Cold flu'),
('212-12-1212', '2023-03-30', '2023-04-15', 'COVID-19'),
('232-32-3232', '2023-04-20', '2023-05-05', 'COVID-19');

-- Sample data for Schedule table
INSERT INTO Schedule (EmployeeMedicareNumber, FacilityName, ScheduleDate, StartTime, EndTime) VALUES
('E111', 'Hospital A', '2024-04-10', '09:00:00', '12:00:00'),
('E222', 'Clinic B', '2024-04-11', '13:00:00', '16:00:00'),
('E333', 'Hospital C', '2024-04-12', '10:00:00', '13:00:00'),
('E444', 'Clinic D', '2024-04-13', '11:00:00', '14:00:00'),
('E777', 'Hospital A', '2024-04-14', '09:00:00', '12:00:00'),
('E898', 'Clinic B', '2024-04-15', '13:00:00', '16:00:00'),
('E999', 'Hospital C', '2024-04-16', '10:00:00', '13:00:00'),
('E555', 'Clinic D', '2024-04-17', '11:00:00', '14:00:00'),
('E131', 'Hospital A', '2024-04-10', '09:00:00', '12:00:00'),
('E141', 'Clinic B', '2024-04-11', '13:00:00', '16:00:00'),
('E151', 'Hospital C', '2024-04-12', '10:00:00', '13:00:00'),
('E161', 'Clinic D', '2024-04-13', '11:00:00', '14:00:00'),
('E171', 'Hospital A', '2024-04-14', '09:00:00', '12:00:00'),
('E191', 'Hospital C', '2024-04-16', '10:00:00', '13:00:00'),
('E212', 'Clinic D', '2024-04-17', '11:00:00', '14:00:00'),
('E232', 'Clinic D', '2024-04-17', '11:00:00', '14:00:00');

-- Sample data for Residency table
INSERT INTO Residency (SSN, Address, StartDate, EndDate, IsPrimary) VALUES
('111-11-1111', '123 Main St', '2020-01-01', '2022-06-30', 1), -- Primary residence
('111-11-1111', '234 Oak St', '2022-07-01', '2023-12-31', 0),
('222-22-2222', '456 Elm St', '2020-03-15', '2023-09-30', 1), -- Primary residence
('222-22-2222', '345 Elm St', '2023-10-01', '2024-12-31', 0),
('333-33-3333', '789 Oak St', '2021-05-01', '2024-02-29', 1), -- Primary residence
('333-33-3333', '456 Maple St', '2024-03-01', '2025-06-30', 0),
('444-44-4444', '012 Pine St', '2019-12-01', '2023-03-31', 1), -- Primary residence
('444-44-4444', '567 Pine St', '2023-04-01', '2025-05-31', 0),
('555-55-5555', '234 Oak St', '2020-07-01', '2022-12-31', 1), -- Primary residence
('555-55-5555', '678 Birch St', '2023-01-01', '2025-04-30', 0),
('666-66-6666', '456 Elm St', '2021-02-15', '2024-08-31', 1), -- Primary residence
('666-66-6666', '123 Main St', '2024-09-01', '2026-10-31', 0),
('777-77-7777', '012 Pine St', '2022-01-01', '2025-06-30', 1), -- Primary residence
('777-77-7777', '456 Maple St', '2025-07-01', '2027-12-31', 0),
('888-88-8888', '234 Oak St', '2018-10-01', '2022-03-31', 1), -- Primary residence
('888-88-8888', '789 Oak St', '2022-04-01', '2024-08-31', 0),
('999-99-9999', '456 Maple St', '2020-08-01', '2023-01-31', 1), -- Primary residence
('999-99-9999', '456 Elm St', '2023-02-01', '2025-05-31', 0),
('101-01-1010', '678 Birch St', '2022-04-01', '2025-07-31', 1), -- Primary residence
('101-01-1010', '012 Pine St', '2025-08-01', '2028-11-30', 0),
('121-21-2121', '456 Maple St', '2019-11-01', '2022-02-28', 1), -- Primary residence
('121-21-2121', '789 Oak St', '2022-03-01', '2024-06-30', 0),
('131-31-3131', '789 Oak St', '2023-01-01', '2023-12-31', 1), -- Primary residence
('131-31-3131', '234 Oak St', '2024-01-01', '2024-12-31', 0),
('141-41-4141', '456 Maple St', '2023-03-15', '2023-12-31', 1), -- Primary residence
('141-41-4141', '678 Birch St', '2024-01-01', '2024-12-31', 0),
('151-51-5151', '789 Elm St', '2023-05-01', '2024-04-30', 1), -- Primary residence
('151-51-5151', '123 Pine St', '2024-05-01', '2025-04-30', 0),
('161-61-6161', '890 Cedar St', '2023-07-01', '2024-06-30', 1), -- Primary residence
('161-61-6161', '456 Oak St', '2024-07-01', '2025-06-30', 0),
('171-71-7171', '567 Maple St', '2023-09-01', '2024-08-31', 1), -- Primary residence
('171-71-7171', '789 Pine St', '2024-09-01', '2025-08-31', 0),
('181-81-8181', '789 Oak St', '2023-11-01', '2024-10-31', 1), -- Primary residence
('181-81-8181', '234 Oak St', '2024-11-01', '2025-10-31', 0),
('191-91-9191', '456 Maple St', '2024-01-01', '2024-12-31', 1), -- Primary residence
('191-91-9191', '678 Birch St', '2025-01-01', '2025-12-31', 0),
('202-02-0202', '789 Elm St', '2023-03-15', '2023-12-31', 1), -- Primary residence
('202-02-0202', '123 Pine St', '2024-01-01', '2024-12-31', 0),
('212-12-1212', '890 Cedar St', '2023-05-01', '2024-04-30', 1), -- Primary residence
('212-12-1212', '456 Oak St', '2024-05-01', '2025-04-30', 0),
('222-22-2222', '567 Maple St', '2023-07-01', '2024-06-30', 1), -- Primary residence
('222-22-2222', '789 Pine St', '2024-07-01', '2025-06-30', 0),
('232-32-3232', '789 Oak St', '2023-09-01', '2024-08-31', 1), -- Primary residence
('232-32-3232', '234 Oak St', '2024-09-01', '2025-08-31', 0);

-- Sample data for employment table
INSERT INTO employment (MedicareNumber, Facility_Name, Role, StartDate, EndDate) VALUES
('E111', 'Hospital A', 'Doctor', '2022-01-01', null),
('E222', 'Clinic B', 'Nurse', '2022-03-15', null),
('E222', 'Clinic C', 'Nurse', '2022-06-15', null),
('E333', 'Hospital C', 'Surgeon', '2021-05-01', null),
('E444', 'Clinic D', 'Receptionist', '2021-12-01', null),
('E777', 'Hospital A', 'Nurse', '2020-07-01', null),
('E777', 'Clinic B', 'Nurse', '2023-07-01', null),
('E898', 'Clinic B', 'Doctor', '2021-02-15', null),
('E999', 'Hospital C', 'Nurse', '2022-01-01', null),
('E555', 'Clinic D', 'Doctor', '2018-10-01', '2022-03-31'),
('E131', 'Hospital A', 'Doctor', '2022-01-01', null),
('E141', 'Clinic B', 'Nurse', '2022-03-15', null),
('E151', 'Hospital C', 'Surgeon', '2021-05-01', null),
('E161', 'Clinic D', 'Receptionist', '2021-12-01', null),
('E171', 'Hospital A', 'Nurse', '2020-07-01', null),
('E181', 'Clinic B', 'Doctor', '2021-02-15', null),
('E191', 'Hospital C', 'Nurse', '2022-01-01', null),
('E202', 'Clinic D', 'Doctor', '2018-10-01', '2022-03-31'),
('E212', 'Clinic D', 'Doctor', '2018-10-01', '2022-03-31'),
('E232', 'Clinic D', 'Doctor', '2018-10-01', '2022-03-31');

-- Sample data for manages
INSERT INTO manages (MediacareNumber, Facility_Name) VALUES 
('Hospital A', 'E111'),
('Clinic B', 'E222'),
('Hospital C', 'E333'),
('Clinic D', 'E444');
