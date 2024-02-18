-- Odd queries

-- i
SELECT facility.province, facility.name, facility.capacity, count(emp.medicarenumber) AS Number_of_employees,
(SELECT COUNT(*) FROM Residency WHERE address = r.address) AS People_living_with_employees
FROM facility
INNER JOIN employment emp ON facility.Name=emp.HospitalName
INNER JOIN employee e ON emp.medicarenumber=e.medicarenumber
INNER JOIN Residency r ON e.SSN=r.ssn
GROUP BY facility.name, r.address;

-- iii

SELECT person.name, residence.address, residence.city, residence.province,
(SELECT COUNT(*) FROM residency WHERE address = residence.address) AS Number_of_people_in_household
FROM residency r
JOIN person ON r.SSN=person.ssn
JOIN residence ON r.address=residence.address
where r.address IN (
    SELECT r.address
    FROM person p
    JOIN employee e ON e.SSN = p.SSN
    JOIN residency r ON p.SSN = r.SSN
    JOIN employment ON e.medicarenumber=employment.medicarenumber
    WHERE p.relationship IS NOT NULL 
        AND p.SSN IN (SELECT infection.SSN from infection) 
        AND employment.hospitalname = 'Special Installment E' 
)
GROUP BY person.name, residence.address
ORDER BY province, city, address;

-- v
SELECT person.name, employment.role, employment.medicarenumber, person.ssn,
r.phonenumber, infection.infectiondate,
(SELECT COUNT(*) FROM residency WHERE address = R.address) AS Number_of_people_in_household
FROM person
JOIN employee e ON person.SSN=e.ssn
JOIN employment ON e.medicarenumber=employment.medicarenumber
JOIN residency ON person.ssn = residency.ssn
JOIN residence r ON residency.address=r.address
JOIN infection ON person.SSN = infection.SSN
WHERE employment.hospitalname = 'Hospital Maisonneuve Rosemont'
AND employment.enddate IS NULL
AND person.SSN IN (SELECT infection.SSN FROM infection)
AND person.SSN NOT IN (SELECT vaccine.SSN FROM vaccine)
AND (employment.role = 'Doctor' OR employment.role = 'Nurse');

-- vii
SELECT type, count(*) FROM vaccine
GROUP BY type
ORDER BY count DESC;