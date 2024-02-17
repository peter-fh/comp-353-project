CREATE TABLE Residency (
    SSN varchar(255),
    Address varchar(255),
    FOREIGN KEY (SSN) REFERENCES Employee(SSN) NOT NULL,
    FOREIGN KEY (Address) REFERENCES Residence(Address) NOT NULL,
    StartDate date,
    EndDate date
);