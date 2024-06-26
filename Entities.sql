CREATE TABLE Person (
    SSN varchar(255) PRIMARY KEY,
    Name varchar(255),
    Relationship varchar(255)
);


CREATE TABLE Employee (
    SSN varchar(255),
    MedicareNumber varchar(255) PRIMARY KEY,
    Email varchar(255),
    FOREIGN KEY (SSN) REFERENCES Person(SSN)
);

CREATE TABLE Facility (
    Name varchar(255) PRIMARY KEY,
    Type varchar(255),
    Address varchar(255),
    Capacity int,
    Website varchar(255),
    Phone varchar(50)
);

CREATE TABLE Residence (
    Address varchar(255),
    Type varchar(255),
    PostalCode varchar(10),
    PhoneNumber varchar(50),
    Bedrooms int,
    PRIMARY KEY (Address, PostalCode)
);

CREATE TABLE Province (
    CityName varchar(255) PRIMARY KEY,
    ProvinceName varchar(255)
);

CREATE TABLE City (
    Code varchar(10) PRIMARY KEY,
    CityName varchar(255),
    FOREIGN KEY (CityName) REFERENCES Province(CityName)
);

CREATE TABLE PostalCode (
    Name varchar(255) PRIMARY KEY,
    Code varchar(10) ,
    FOREIGN KEY (Name) REFERENCES Facility(Name),
    FOREIGN KEY (Code) REFERENCES City(Code)
);



CREATE TABLE Vaccine (
    SSN varchar(255),
    Type varchar(255),
    VaccinationDate date,
    Location varchar(255),
    Dose varchar(255),
    FOREIGN KEY (SSN) REFERENCES Person(SSN)
);


CREATE TABLE Infection (
    SSN varchar(255),
    InfectionDate date,
    RecoveryDate date,
    Type varchar(255),
    FOREIGN KEY (SSN) REFERENCES Person(SSN)
);

CREATE TABLE EmailLog(
    EmailID INTEGER PRIMARY KEY AUTO_INCREMENT,
    Recipient VARCHAR(255),
    Subject VARCHAR(255),
    Body TEXT,
    SendDate DATE,
    IsSent bit
);

CREATE TABLE ScheduleEvent (
    EventID INTEGER PRIMARY KEY AUTO_INCREMENT,
    EventDate DATE
);  
