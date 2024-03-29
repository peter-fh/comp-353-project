CREATE TABLE Employment (
    MedicareNumber varchar(255),
    HospitalName varchar(255),
    Role varchar(255),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (MedicareNumber) REFERENCES Employee(MedicareNumber),
    FOREIGN KEY (HospitalName) REFERENCES Facility(Name)
);

CREATE TABLE Residency (
    SSN varchar(255),
    Address varchar(255),
    StartDate DATE,
    EndDate date,
    FOREIGN KEY (SSN) REFERENCES Person(SSN), 
    FOREIGN KEY (Address) REFERENCES Residence(Address) 
);
