CREATE TABLE Person (
    SSN INT PRIMARY KEY,
    Name varchar(255),
);


CREATE TABLE Employee (
    MedicareNumber int PRIMARY KEY,
    Role varchar(255),
    FOREIGN KEY (SSN) REFERENCES Persons(SSN)
);


