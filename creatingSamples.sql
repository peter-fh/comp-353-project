INSERT INTO Person (SSN, Name, Relationship) VALUES
('123456789', 'John Doe', NULL),
('234567890', 'Jane Smith', NULL),
('345678901', 'Michael Johnson', NULL),
('456789012', 'Emily Davis', NULL),
('567890123', 'Chris Brown', NULL),
('678901234', 'Alice Johnson', 'Partner'),
('789012345', 'Ethan Williams', 'Roommate'),
('890123456', 'Olivia Brown', 'Dependent'),
('901234567', 'Sophia Davis', 'Parent'),
('012345678', 'William Miller', 'Dependent'),
('111111111', 'Pablo Miguel', 'Roommate'),
('222222222', 'Alice Rodriguez', 'Roommate'),
('333333333', 'Jane Stuart', 'Roommate'),
('444444444', 'Stephanie Johnson', 'Roommate'),
('513513455', 'Scarlet Maya', NULL),
('653573473', 'Larissa Amorim', NULL),
('555555555', 'Amy Wilson', 'Roommate');




INSERT INTO Employee (SSN, MedicareNumber) VALUES
('513513455', 542564),
('653573473', 753275),
('123456789', 111111),
('234567890', 222222),
('345678901', 333333),
('456789012', 444444),
('567890123', 555555),
('111111111', 123456),
('222222222', 234567),
('333333333', 345678),
('444444444', 456789),
('555555555', 567890);


INSERT INTO Facility (Name, Type, Province, City, Address, Capacity, Website, Phone, PostalCode) VALUES
('Hospital A', 'Hospital', 'Ontario', 'Toronto', '123 Main St', 100, 'www.hospitalA.com', '123-456-7890', 'M1A1A1'),
('CLSC B', 'CLSC', 'Quebec', 'Montreal', '456 Elm St', 50, 'www.clscB.com', '234-567-8901', 'H2B2B2'),
('Clinic C', 'Clinic', 'Alberta', 'Calgary', '789 Oak St', 30, 'www.clinicC.com', '345-678-9012', 'T3C3C3'),
('Pharmacy D', 'Pharmacy', 'British Columbia', 'Vancouver', '012 Pine St', 20, 'www.pharmacyD.com', '456-789-0123', 'V4D4D4'),
('Special Installment E', 'Special Installment', 'Manitoba', 'Winnipeg', '345 Cedar St', 15, 'www.installmentE.com', '567-890-1234', 'R5E5E5'),
('Hospital Maisonneuve Rosemont', 'Hospital', 'Quebec', 'Laval', '531 Jacques-Quartier', 30, 'www.HospitalRosemont.com', '431-5136-6531', 'J3G9K1');


INSERT INTO Vaccine (SSN, Type, VaccinationDate, Location) VALUES
('123456789', 'Pfizer', '2023-01-01', 'Hospital A'),
('234567890', 'Moderna', '2023-02-01', 'CLSC B'),
('345678901', 'AstraZeneca', '2023-03-01', 'Clinic C'),
('456789012', 'Johnson & Johnson', '2023-04-01', 'Pharmacy D'),
('567890123', 'Pfizer', '2023-05-01', 'Special Installment E');


INSERT INTO Infection (SSN, InfectionDate, Type) VALUES
('123456789', '2023-01-05', 'COVID-19'),
('234567890', '2023-02-10', 'SARS-CoV-2 Variant'),
('345678901', '2023-03-15', 'COVID-19'),
('456789012', '2023-04-20', 'SARS-CoV-2 Variant'),
('567890123', '2023-05-25', 'COVID-19'),
('111111111', '2024-02-10', 'COVID-19'),
('333333333', '2024-02-11', 'COVID-19');


INSERT INTO Residence (Address, City, Province, PostalCode, PhoneNumber, Bedrooms) VALUES
('5642 Olof St', 'Laval', 'Quebec', 'J4F5B8', '531-653-1344', 2),
('5135 Palm St', 'Laval', 'Quebec', 'J5H2B7', '543-097-3455', 1),
('123 Maple St', 'Toronto', 'Ontario', 'M1A1A1', '123-456-7890', 2),
('456 Oak St', 'Montreal', 'Quebec', 'H2B2B2', '234-567-8901', 3),
('789 Pine St', 'Calgary', 'Alberta', 'T3C3C3', '345-678-9012', 1),
('012 Elm St', 'Vancouver', 'British Columbia', 'V4D4D4', '456-789-0123', 4),
('345 Cedar St', 'Winnipeg', 'Manitoba', 'R5E5E5', '567-890-1234', 2),
('4218 Saint Jacques', 'Montreal', 'Quebec', 'M1M1M1', '416-123-4567', 2),
('513 McMillan St', 'Vancouver', 'British Columbia', 'V6V6V6', '604-987-6543', 3);


INSERT INTO Employment (MedicareNumber, HospitalName, Role, StartDate, EndDate) VALUES
(542564, 'Hospital Maisonneuve Rosemont', 'Doctor', '2023-05-03', NULL),
(753275, 'Hospital Maisonneuve Rosemont', 'Nurse', '2023-01-02', NULL),
(111111, 'Hospital A', 'Nurse', '2023-01-01', NULL),
(222222, 'CLSC B', 'Doctor', '2023-01-01', NULL),
(333333, 'Clinic C', 'Cashier', '2023-01-01', NULL),
(444444, 'Pharmacy D', 'Pharmacist', '2023-01-01', NULL),
(555555, 'Special Installment E', 'Receptionist', '2023-01-01', NULL),
(123456, 'Special Installment E', 'Doctor', '2023-01-01', NULL),
(234567, 'Special Installment E', 'Nurse', '2023-01-01', NULL),
(345678, 'Special Installment E', 'Cashier', '2023-01-01', NULL),
(456789, 'Special Installment E', 'Pharmacist', '2023-01-01', NULL),
(567890, 'Special Installment E', 'Security Personnel', '2023-01-01', NULL);


INSERT INTO Residency (SSN, Address, StartDate, EndDate) VALUES
('513513455', '5642 Olof St', '2023-10-10', NULL),
('653573473', '5135 Palm St', '2023-07-11', NULL),
('123456789', '123 Maple St', '2023-01-01', NULL),
('234567890', '456 Oak St', '2023-02-01', NULL),
('345678901', '789 Pine St', '2023-03-01', NULL),
('456789012', '012 Elm St', '2023-04-01', NULL),
('567890123', '345 Cedar St', '2023-05-01', NULL),
('678901234', '123 Maple St', '2023-01-01', NULL), -- Alice Johnson with John Doe
('789012345', '456 Oak St', '2023-02-01', NULL),  -- Ethan Williams with Jane Smith
('890123456', '789 Pine St', '2023-03-01', NULL), -- Olivia Brown with Michael Johnson
('901234567', '012 Elm St', '2023-04-01', NULL),  -- Sophia Davis with Emily Davis
('012345678', '345 Cedar St', '2023-01-01', NULL), -- William Miller with Chris Brown
('111111111', '4218 Saint Jacques', '2023-05-02', NULL),
('222222222', '4218 Saint Jacques', '2023-07-02', NULL),
('333333333', '513 McMillan St', '2023-07-01', NULL),
('444444444', '513 McMillan St', '2023-09-03', NULL),
('555555555', '513 McMillan St', '2023-10-01', NULL);