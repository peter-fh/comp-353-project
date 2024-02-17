CREATE TABLE Person (
    SSN INT PRIMARY KEY,
    Name varchar(255),
    Relationship varchar(255)
);


CREATE TABLE Employee (
    SSN INT,
    MedicareNumber int PRIMARY KEY,
    FOREIGN KEY (SSN) REFERENCES Person(SSN)
);
