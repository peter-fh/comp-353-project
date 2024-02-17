CREATE TABLE Employment (
    MedicareNumber int,
    HospitalName varchar(255),
    FOREIGN KEY (MedicareNumber) REFERENCES Employee(MedicareNumber),
    FOREIGN KEY (HospitalName) REFERENCES Facility(Name)
);


CREATE TABLE Managers (
    MedicareNumber int,
    HospitalName varchar(255),
    FOREIGN KEY (MedicareNumber) REFERENCES Employee(MedicareNumber),
    FOREIGN KEY (HospitalName) REFERENCES Facility(Name)
);


