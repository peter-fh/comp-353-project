INSERT INTO Person (SSN, Name, Relationship) VALUES
('123456789', 'John Doe', 'Roommate'),
('234567890', 'Jane Smith', 'Partner'),
('345678901', 'Alice Johnson', 'Parent'),
('456789012', 'Bob Williams', 'Dependent'),
('567890123', 'Emily Brown', 'Roommate'),
('678901234', 'Michael Davis', 'Partner'),
('789012345', 'Sarah Wilson', 'Parent'),
('890123456', 'David Martinez', 'Dependent'),
('901234567', 'Laura Miller', 'Roommate'),
('012345678', 'Chris Taylor', 'Partner'),
('987654321', 'Jennifer Lee', 'Parent'),
('876543210', 'Ryan Thompson', 'Dependent'),
('765432109', 'Emma Anderson', 'Roommate'),
('654321098', 'Matthew Garcia', 'Partner'),
('543210987', 'Olivia Rodriguez', 'Parent');

INSERT INTO Employee (SSN, MedicareNumber) VALUES
('123456789', 123456789),
('234567890', 234567890),
('345678901', 345678901),
('456789012', 456789012),
('567890123', 567890123),
('678901234', 678901234),
('789012345', 789012345),
('890123456', 890123456),
('901234567', 901234567),
('012345678', 012345678),
('987654321', 987654321),
('876543210', 876543210),
('765432109', 765432109),
('654321098', 654321098),
('543210987', 543210987);

INSERT INTO Facility (Name, Type, Province, City, Address, Capacity, Website, Phone, PostalCode) VALUES
('Hospital A', 'Hospital', 'Ontario', 'Toronto', '123 Main St', 100, 'www.hospitalA.com', '123-456-7890', 'M1A1A1'),
('CLSC B', 'CLSC', 'Quebec', 'Montreal', '456 Elm St', 50, 'www.clscB.com', '234-567-8901', 'H2B2B2'),
('Clinic C', 'Clinic', 'Alberta', 'Calgary', '789 Oak St', 30, 'www.clinicC.com', '345-678-9012', 'T3C3C3'),
('Pharmacy D', 'Pharmacy', 'British Columbia', 'Vancouver', '012 Pine St', 20, 'www.pharmacyD.com', '456-789-0123', 'V4D4D4'),
('Special Installment E', 'Special Installment', 'Manitoba', 'Winnipeg', '345 Cedar St', 15, 'www.installmentE.com', '567-890-1234', 'R5E5E5');

INSERT INTO Vaccine (SSN, Type, VaccinationDate, Location) VALUES
('123456789', 'Pfizer', '2023-01-15', 'Hospital A'),
('234567890', 'Moderna', '2023-02-20', 'CLSC B'),
('345678901', 'AstraZeneca', '2023-03-25', 'Clinic C'),
('456789012', 'Johnson & Johnson', '2023-04-30', 'Pharmacy D'),
('567890123', 'Pfizer', '2023-05-15', 'Special Installment E'),
('678901234', 'Moderna', '2023-06-20', 'Hospital A'),
('789012345', 'Pfizer', '2023-07-25', 'CLSC B'),
('890123456', 'Moderna', '2023-08-30', 'Clinic C'),
('901234567', 'AstraZeneca', '2023-09-15', 'Pharmacy D'),
('012345678', 'Johnson & Johnson', '2023-10-20', 'Special Installment E'),
('987654321', 'Pfizer', '2023-11-25', 'Hospital A'),
('876543210', 'Moderna', '2023-12-30', 'CLSC B'),
('765432109', 'AstraZeneca', '2024-01-15', 'Clinic C'),
('654321098', 'Johnson & Johnson', '2024-02-20', 'Pharmacy D'),
('543210987', 'Pfizer', '2024-03-25', 'Special Installment E');

INSERT INTO Infection (SSN, InfectionDate, Type) VALUES
('123456789', '2023-01-10', 'COVID-19'),
('234567890', '2023-02-15', 'SARS-CoV-2 Variant'),
('345678901', '2023-03-20', 'COVID-19'),
('456789012', '2023-04-25', 'SARS-CoV-2 Variant'),
('567890123', '2023-05-30', 'COVID-19'),
('678901234', '2023-06-05', 'SARS-CoV-2 Variant'),
('789012345', '2023-07-10', 'COVID-19'),
('890123456', '2023-08-15', 'SARS-CoV-2 Variant'),
('901234567', '2023-09-20', 'COVID-19'),
('012345678', '2023-10-25', 'SARS-CoV-2 Variant'),
('987654321', '2023-11-30', 'COVID-19'),
('876543210', '2023-12-05', 'SARS-CoV-2 Variant'),
('765432109', '2024-01-10', 'COVID-19'),
('654321098', '2024-02-15', 'SARS-CoV-2 Variant'),
('543210987', '2024-03-20', 'COVID-19');

INSERT INTO Residence (Address, City, Type, Province, PostalCode, PhoneNumber, Bedrooms) VALUES
('123 Maple St', 'Toronto', 'House', 'Ontario', 'M2M2M2', '123-456-7890', 3),
('456 Oak St', 'Montreal', 'Apartment', 'Quebec', 'H2H2H2', '234-567-8901', 2),
('789 Pine St', 'Calgary', 'Condominium', 'Alberta', 'T2T2T2', '345-678-9012', 2),
('012 Elm St', 'Vancouver', 'Semi-detached House', 'British Columbia', 'V6V6V6', '456-789-0123', 4),
('345 Cedar St', 'Winnipeg', 'House', 'Manitoba', 'R2R2R2', '567-890-1234', 3);

INSERT INTO Employment (MedicareNumber, HospitalName, Role, StartDate, EndDate) VALUES
(123456789, 'Hospital A', 'Nurse', '2023-01-01', '2023-12-31'),
(234567890, 'CLSC B', 'Doctor', '2023-01-01', '2023-12-31'),
(345678901, 'Clinic C', 'Cashier', '2023-01-01', '2023-12-31'),
(456789012, 'Pharmacy D', 'Pharmacist', '2023-01-01', '2023-12-31'),
(567890123, 'Special Installment E', 'Receptionist', '2023-01-01', '2023-12-31'),
(678901234, 'Hospital A', 'Administrative Personnel', '2023-01-01', '2023-12-31'),
(789012345, 'CLSC B', 'Security Personnel', '2023-01-01', '2023-12-31'),
(890123456, 'Clinic C', 'Regular Employee', '2023-01-01', '2023-12-31'),
(901234567, 'Pharmacy D', 'Regular Employee', '2023-01-01', '2023-12-31'),
(012345678, 'Special Installment E', 'Regular Employee', '2023-01-01', '2023-12-31'),
(987654321, 'Hospital A', 'Nurse', '2023-01-01', '2023-12-31'),
(876543210, 'CLSC B', 'Doctor', '2023-01-01', '2023-12-31'),
(765432109, 'Clinic C', 'Cashier', '2023-01-01', '2023-12-31'),
(654321098, 'Pharmacy D', 'Pharmacist', '2023-01-01', '2023-12-31'),
(543210987, 'Special Installment E', 'Receptionist', '2023-01-01', '2023-12-31');


INSERT INTO Residency (SSN, Address, StartDate, EndDate) VALUES
('123456789', '123 Maple St', '2023-01-01', NULL),
('234567890', '456 Oak St', '2023-02-01', NULL),
('345678901', '789 Pine St', '2023-03-01', NULL),
('456789012', '012 Elm St', '2023-04-01', NULL),
('567890123', '345 Cedar St', '2023-05-01', NULL),
('678901234', '123 Maple St', '2023-06-01', NULL),
('789012345', '456 Oak St', '2023-07-01', NULL),
('890123456', '789 Pine St', '2023-08-01', NULL),
('901234567', '012 Elm St', '2023-09-01', NULL),
('012345678', '345 Cedar St', '2023-10-01', NULL),
('987654321', '123 Maple St', '2023-11-01', NULL),
('876543210', '456 Oak St', '2023-12-01', NULL),
('765432109', '789 Pine St', '2024-01-01', NULL),
('654321098', '012 Elm St', '2024-02-01', NULL),
('543210987', '345 Cedar St', '2024-03-01', NULL);
