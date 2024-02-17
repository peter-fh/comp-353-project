INSERT INTO Person (SSN, Name, Relationship) VALUES
(123456789, 'John Doe', 'Roommate'),
(987654321, 'Jane Smith', 'Partner'),
(456789123, 'Michael Johnson', 'Parent'),
(654321987, 'Emily Davis', 'Dependent'),
(789123456, 'Chris Wilson', 'Roommate'),
(321987654, 'Sarah Brown', 'Partner'),
(951753852, 'David Lee', 'Parent'),
(753951852, 'Amanda Taylor', 'Dependent'),
(369258147, 'Robert Martinez', 'Roommate'),
(258147369, 'Lisa Anderson', 'Partner'),
(147258369, 'Daniel White', 'Parent'),
(852963741, 'Laura Clark', 'Dependent'),
(963852741, 'Kevin Harris', 'Roommate'),
(741852963, 'Michelle Carter', 'Partner'),
(852741963, 'Steven Thomas', 'Parent');


INSERT INTO Employee (SSN, MedicareNumber, Role, Relationship) VALUES
(123456789, 123456, 'Doctor', 'Roommate'),
(987654321, 654321, 'Nurse', 'Partner'),
(456789123, 789123, 'Receptionist', 'Parent'),
(654321987, 951753, 'Administrative Personnel', 'Dependent'),
(789123456, 369258, 'Pharmacist', 'Roommate'),
(321987654, 258147, 'Cashier', 'Partner'),
(951753852, 147258, 'Security Personnel', 'Parent'),
(753951852, 852963, 'Regular Employee', 'Dependent'),
(369258147, 963852, 'Doctor', 'Roommate'),
(258147369, 741852, 'Nurse', 'Partner'),
(147258369, 852741, 'Receptionist', 'Parent'),
(852963741, 963741, 'Administrative Personnel', 'Dependent'),
(963852741, 123987, 'Pharmacist', 'Roommate'),
(741852963, 789654, 'Cashier', 'Partner'),
(852741963, 987321, 'Security Personnel', 'Parent');


INSERT INTO Facility (Name, Type, Province, City, Address, Capacity, Website, Phone, PostalCode) VALUES
('Hospital A', 'Hospital', 'Ontario', 'Toronto', '123 Main St', 100, 'www.hospitalA.com', '123-456-7890', 'M1M 1M1'),
('CLSC B', 'CLSC', 'Quebec', 'Montreal', '456 Elm St', 50, 'www.clscB.com', '456-789-0123', 'H2H 2H2'),
('Clinic C', 'Clinic', 'Alberta', 'Calgary', '789 Oak St', 30, 'www.clinicC.com', '789-012-3456', 'T3T 3T3'),
('Pharmacy D', 'Pharmacy', 'British Columbia', 'Vancouver', '987 Pine St', 20, 'www.pharmacyD.com', '012-345-6789', 'V4V 4V4'),
('Special Installment E', 'Special Installment', 'Manitoba', 'Winnipeg', '321 Cedar St', 15, 'www.specialE.com', '345-678-9012', 'R5R 5R5');


INSERT INTO Vaccine (SSN, Type, VaccinationDate, Dose, Location) VALUES
(123456789, 'Pfizer', '2023-01-01', '1', 'Hospital A'),
(987654321, 'Moderna', '2023-01-02', '1', 'CLSC B'),
(456789123, 'AstraZeneca', '2023-01-03', '1', 'Clinic C'),
(654321987, 'Johnson & Johnson', '2023-01-04', '1', 'Pharmacy D'),
(789123456, 'Pfizer', '2023-01-05', '1', 'Special Installment E'),
(321987654, 'Moderna', '2023-01-06', '1', 'Hospital A'),
(951753852, 'AstraZeneca', '2023-01-07', '1', 'CLSC B'),
(753951852, 'Johnson & Johnson', '2023-01-08', '1', 'Clinic C'),
(369258147, 'Pfizer', '2023-01-09', '1', 'Pharmacy D'),
(258147369, 'Moderna', '2023-01-10', '1', 'Special Installment E'),
(147258369, 'AstraZeneca', '2023-01-11', '1', 'Hospital A'),
(852963741, 'Johnson & Johnson', '2023-01-12', '1', 'CLSC B'),
(963852741, 'Pfizer', '2023-01-13', '1', 'Clinic C'),
(741852963, 'Moderna', '2023-01-14', '1', 'Pharmacy D'),
(852741963, 'AstraZeneca', '2023-01-15', '1', 'Special Installment E');


INSERT INTO Infection (SSN, InfectionDate, Amount, Type) VALUES
(741852963, '2022-01-14', 1, 'COVID-19'),
(852741963, '2022-01-15', 1, 'COVID-19'),
(123456789, '2022-02-01', 1, 'SARS-CoV-2 Variant'),
(987654321, '2022-02-02', 1, 'COVID-19'),
(456789123, '2022-02-03', 1, 'COVID-19'),
(654321987, '2022-02-04', 2, 'SARS-CoV-2 Variant'),
(789123456, '2022-02-05', 1, 'COVID-19'),
(321987654, '2022-02-06', 1, 'COVID-19'),
(951753852, '2022-02-07', 1, 'COVID-19'),
(753951852, '2022-02-08', 1, 'COVID-19'),
(369258147, '2022-02-09', 1, 'SARS-CoV-2 Variant'),
(258147369, '2022-02-10', 1, 'COVID-19'),
(147258369, '2022-02-11', 1, 'COVID-19'),
(852963741, '2022-02-12', 2, 'COVID-19'),
(963852741, '2022-02-13', 1, 'COVID-19');
