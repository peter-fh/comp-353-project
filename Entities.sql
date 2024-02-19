CREATE TABLE Person (
    SSN varchar(255) PRIMARY KEY,
    Name varchar(255),
    Relationship varchar(255)
);


CREATE TABLE Employee (
    SSN varchar(255),
    MedicareNumber varchar(255) PRIMARY KEY,
    FOREIGN KEY (SSN) REFERENCES Person(SSN)
);

CREATE TABLE Facility (
    Name varchar(255) PRIMARY KEY,
    Type varchar(255),
    Province varchar(255),
    City varchar(255),
    Address varchar(255),
    Capacity int,
    Website varchar(255),
    Phone varchar(50),
    PostalCode varchar(10)
);

CREATE TABLE Vaccine (
    SSN varchar(255),
    Type varchar(255),
    VaccinationDate date,
    Location varchar(255),
    FOREIGN KEY (SSN) REFERENCES Person(SSN)
);


CREATE TABLE Infection (
    SSN varchar(255),
    InfectionDate date,
    RecoveryDate date,
    Type varchar(255),
    FOREIGN KEY (SSN) REFERENCES Person(SSN)

);

CREATE TABLE Residence (
    Address varchar(255) PRIMARY KEY,
    City varchar(255),
    Type varchar(255),
    Province varchar(20),
    PostalCode varchar(10),
    PhoneNumber varchar(50),
    Bedrooms int
);
