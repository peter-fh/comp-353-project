SELECT p.Name, e.Role, COUNT(r.SSN) AS 'Number of Secondary Residences'
FROM Facility f
JOIN Employment e ON f.Name = e.FacilityName
JOIN Employee emp ON e.MedicareNumber = emp.MedicareNumber
JOIN Person p ON emp.SSN = p.SSN
JOIN Residency r ON p.SSN = r.SSN
JOIN Schedule s ON emp.MedicareNumber = s.EmployeeMedicareNumber
WHERE r.IsPrimary = 0
AND s.ScheduleDate BETWEEN SUBDATE(CURDATE(), INTERVAL 7 DAY) AND CURDATE()
GROUP BY p.Name, e.Role
HAVING COUNT(r.ssn) > 2;



