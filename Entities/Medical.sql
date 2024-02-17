CREATE TABLE Vaccine (
    SSN int,
    Type varchar(255),
    VaccinationDate varchar(50),
    Dose varchar(50),
    Location varchar(255),
    FOREIGN KEY (SSN) REFERENCES Person(SSN)
);


CREATE TABLE Infection (
    SSN int,
    InfectionDate varchar(255),
    Amount int,
    Type varchar(255),
    FOREIGN KEY (SSN) REFERENCES Person(SSN)

);