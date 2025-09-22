-- 14
SELECT 
    p.Name, 
    e.Role, 
    COUNT(CASE WHEN r.SSN = p.SSN THEN 1 ELSE NULL END) AS 'Number of Secondary Residences'
FROM Facility f
JOIN Employment e ON f.Name = e.FacilityName
JOIN Employee emp ON e.MedicareNumber = emp.MedicareNumber
JOIN Person p ON emp.SSN = p.SSN
JOIN Residency r ON p.SSN = r.SSN
JOIN Schedule s ON emp.MedicareNumber = s.EmployeeMedicareNumber
WHERE r.IsPrimary = 0
AND s.ScheduleDate BETWEEN SUBDATE(CURDATE(), INTERVAL 7 DAY) AND CURDATE()
GROUP BY p.SSN
HAVING COUNT(r.ssn) >= 3;


-- 15
SELECT 
    p.Name, 
    e.Email, 
    SUM(CASE WHEN i.type = 'COVID-19' THEN 1 ELSE 0 END),
    COUNT(v.ssn) AS 'Number of Vaccinations', 
    SUM(TIMESTAMPDIFF(HOUR, s.StartTime, s.EndTime)) AS 'Total Hours Worked',
    SUM(CASE WHEN r.isPrimary = 0 THEN 1 ELSE 0 END) AS 'Secondary Residencies'
FROM Employment emp 
JOIN Employee e ON emp.MedicareNumber = e.MedicareNumber
JOIN Person p ON e.SSN = p.SSN
JOIN Schedule s ON emp.MedicareNumber = s.EmployeeMedicareNumber
JOIN Infection i on p.SSN = i.SSN
JOIN Vaccine v ON p.SSN = v.SSN
JOIN Residency r ON p.SSN = r.SSN
WHERE emp.Role = 'Nurse'
AND emp.EndDate IS NULL
AND i.InfectionDate BETWEEN SUBDATE(CURDATE(), INTERVAL 14 DAY) AND CURDATE()
GROUP BY p.SSN
HAVING SUM(CASE WHEN emp.MedicareNumber = e.MedicareNumber THEN 1 ELSE NULL END) > 1;

