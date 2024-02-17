CREATE TABLE Residency (
    FOREIGN KEY (SSN) REFERENCES Employee(SSN) NOT NULL,
    FOREIGN KEY (Address) REFERENCES Residence(Address) NOT NULL,
    StartDate date,
    EndDate date
);