CREATE TABLE Person (
    SSN varchar(255) PRIMARY KEY,
    Name varchar(255),
    Relationship varchar(255)
);


CREATE TABLE Employee (
    SSN varchar(255),
    MedicareNumber int PRIMARY KEY,
    FOREIGN KEY (SSN) REFERENCES Person(SSN)
);
