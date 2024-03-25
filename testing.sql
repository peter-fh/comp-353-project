SELECT 
    person.name,
    employment.HospitalName
FROM 
    person
    JOIN employee e ON person.SSN=e.ssn
    JOIN employment ON e.medicarenumber=employment.medicarenumber
    JOIN residency ON person.ssn = residency.ssn
    JOIN residence r ON residency.address=r.address
    JOIN infection ON person.SSN = infection.SSN;
