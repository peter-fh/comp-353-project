CREATE TABLE Employment (
    MedicareNumber int,
    HospitalName varchar(255),
    Role varchar(255),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (MedicareNumber) REFERENCES Employee(MedicareNumber),
    FOREIGN KEY (HospitalName) REFERENCES Facility(Name)
);


