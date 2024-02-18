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


