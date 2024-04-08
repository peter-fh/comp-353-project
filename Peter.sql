SELECT 
    p.Name, 
    e.Role, 
    COUNT(CASE WHEN r.SSN = p.SSN THEN 1 ELSE NULL END) AS 'Number of Secondary Residences'
FROM 
    Facility f
JOIN 
    Employment e ON f.Name = e.FacilityName
JOIN 
    Employee emp ON e.MedicareNumber = emp.MedicareNumber
JOIN 
    Person p ON emp.SSN = p.SSN
JOIN 
    Residency r ON p.SSN = r.SSN
JOIN 
    Schedule s ON emp.MedicareNumber = s.EmployeeMedicareNumber
WHERE 
    r.IsPrimary = 0
AND 
    s.ScheduleDate BETWEEN SUBDATE(CURDATE(), INTERVAL 7 DAY) AND CURDATE()
GROUP BY 
    p.Name, e.Role
HAVING COUNT(r.ssn) > 2;


SELECT 
    p.Name, 
    e.Email, 
    COUNT(CASE WHEN i.SSN = p.SSN THEN 1 ELSE NULL END) AS 'Number of Infections', 
    COUNT(CASE WHEN i.SSN = p.SSN THEN 1 ELSE NULL END) AS 'Number of Vaccinations', 
    SUM(TIMESTAMPDIFF(HOUR, s.StartTime, s.EndTime)) AS 'Total Hours Worked'
FROM 
    Employment emp 
JOIN 
    Employee e ON emp.MedicareNumber = e.MedicareNumber
JOIN 
    Person p ON e.SSN = p.SSN
JOIN 
    Schedule s ON emp.MedicareNumber = s.EmployeeMedicareNumber
JOIN 
    Infection i on p.SSN = i.SSN
JOIN 
    Vaccine v ON p.SSN = v.SSN
WHERE 
    emp.Role = 'Nurse'
AND 
    emp.EndDate IS NULL
AND 	
    i.InfectionDate BETWEEN SUBDATE(CURDATE(), INTERVAL 14 DAY) AND CURDATE()
GROUP BY 
    e.MedicareNumber
HAVING 	
    COUNT(DISTINCT emp.MedicareNumber) > 1;


