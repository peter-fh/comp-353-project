-- Sample data for Person table
INSERT INTO Person (SSN, Name, Relationship) VALUES
('123456789', 'John Doe', 'Father'),
('987654321', 'Jane Smith', 'Mother'),
('456789123', 'Alice Johnson', 'Daughter'),
('789123456', 'Bob Brown', 'Son'),
('321654987', 'Carol Williams', 'Grandmother');

-- Sample data for Employee table
INSERT INTO Employee (SSN, MedicareNumber, Email) VALUES
('123456789', 'EMP123', 'john.doe@example.com'),
('987654321', 'EMP456', 'jane.smith@example.com'),
('456789123', 'EMP789', 'alice.johnson@example.com'),
('789123456', 'EMP012', 'bob.brown@example.com'),
('321654987', 'EMP345', 'carol.williams@example.com');

-- Sample data for Facility table
INSERT INTO Facility (Name, Type, Address, Capacity, Website, Phone) VALUES
('Facility A', 'Hospital', '123 Main St', 100, 'facilityA.com', '123-456-7890'),
('Facility B', 'Clinic', '456 Elm St', 50, 'facilityB.com', '456-789-0123'),
('Facility C', 'Nursing Home', '789 Oak St', 200, 'facilityC.com', '789-012-3456');

-- Sample data for Residence table
INSERT INTO Residence (Address, Type, PostalCode, PhoneNumber, Bedrooms) VALUES
('123 Main St', 'House', 'A1B 2C3', '123-456-7890', 3),
('456 Elm St', 'Apartment', 'D4E 5F6', '456-789-0123', 2),
('789 Oak St', 'House', 'G7H 8I9', '789-012-3456', 4);

-- Sample data for PostalCode table
INSERT INTO PostalCode (Name, Code) VALUES
('Facility A', 'A1B 2C3'),
('Facility B', 'D4E 5F6'),
('Facility C', 'G7H 8I9');

-- Sample data for City table
INSERT INTO City (CityName, Code, Address) VALUES
('City A', 'A1B', '123 Main St'),
('City B', 'D4E', '456 Elm St'),
('City C', 'G7H', '789 Oak St');

-- Sample data for Province table
INSERT INTO Province (ProvinceName, CityName) VALUES
('Province A', 'City A'),
('Province B', 'City B'),
('Province C', 'City C');

-- Sample data for Vaccine table
INSERT INTO Vaccine (SSN, Type, VaccinationDate, Location, Dose) VALUES
('123456789', 'COVID-19', '2022-01-01', 'Facility A', '1st'),
('987654321', 'Flu', '2021-10-15', 'Facility B', '2nd'),
('456789123', 'COVID-19', '2021-12-10', 'Facility C', '2nd'),
('789123456', 'Flu', '2021-11-20', 'Facility A', '1st'),
('321654987', 'COVID-19', '2022-02-05', 'Facility B', '1st');

-- Sample data for Infection table
INSERT INTO Infection (SSN, InfectionDate, RecoveryDate, Type) VALUES
('123456789', '2022-01-10', '2022-01-20', 'Cold'),
('987654321', '2021-12-01', '2021-12-15', 'Flu'),
('456789123', '2022-02-01', '2022-02-10', 'COVID-19'),
('789123456', '2022-03-01', NULL, 'COVID-19'),
('321654987', '2022-03-15', NULL, 'Cold');

-- Sample data for EmailLog table
INSERT INTO EmailLog (Recipient, Subject, Body, SendDate, Sent) VALUES
('EMP123', 'Meeting Reminder', 'Reminder: Team meeting at 10am tomorrow.', '2022-04-01', 1),
('EMP456', 'New Policy Update', 'Please review the updated policy document attached.', '2022-04-02', 1),
('EMP789', 'Training Session', 'Reminder: Training session on new software at 2pm today.', '2022-04-03', 1),
('EMP012', 'Upcoming Deadline', 'Reminder: Project deadline approaching. Please ensure all tasks are completed.', '2022-04-04', 1),
('EMP345', 'Holiday Schedule', 'Updated holiday schedule for the upcoming month attached.', '2022-04-05', 1);

-- Sample data for ScheduleEvent table
INSERT INTO ScheduleEvent (EventDate) VALUES
('2022-04-10'),
('2022-04-11'),
('2022-04-12'),
('2022-04-13'),
('2022-04-14');

-- Sample data for Schedule table
INSERT INTO Schedule (EmployeeMedicareNumber, FacilityName, ScheduleDate, StartTime, EndTime) VALUES
('321654987', 'Facility A', '2025-04-10', '08:00:00', '12:00:00'),
('321654987', 'Facility B', '2025-04-11', '09:00:00', '13:00:00'),
('321654987', 'Facility C', '2025-04-12', '10:00:00', '14:00:00'),
('321654987', 'Facility A', '2025-04-13', '11:00:00', '15:00:00'),
('321654987', 'Facility B', '2025-04-14', '12:00:00', '16:00:00');

SELECT * FROM Schedule;

/* -- Sample data for Residency table
INSERT INTO Residency (SSN, Address, StartDate, EndDate, IsPrimary) VALUES
('123456789', '123 Main St', '2020-01-01', NULL, 1),
('987654321', '456 Elm St', '2019-06-01', NULL, 1),
('456789123', '789 Oak St', '2021-03-15', NULL, 1),
('789123456', '123 Main St', '2022-02-01', NULL, 1),
('321654987', '456 Elm St', '2021-11-15', NULL, 1); */
