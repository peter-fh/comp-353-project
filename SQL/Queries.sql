-- name: query8
SELECT f.name, f.address, c.CityName, p.provinceName, pc.code, f.phone, f.website, f.type,
            f.capacity, pers.name,
            SUM(CASE WHEN e.role = 'doctor' THEN 1 ELSE 0 END) AS doctor_count,
            SUM(CASE WHEN e.role = 'nurse' THEN 1 ELSE 0 END) AS nurse_count,
            SUM(CASE WHEN e.role = 'janitor' THEN 1 ELSE 0 END) AS janitor_count
            
            FROM facility f
            JOIN employment e ON f.name = e.facility_Name
            JOIN employee emp
            
            JOIN postalcode pc ON pc.name = f.name
            JOIN city c ON c.code = pc.code
            JOIN province p ON c.cityname = p.cityname
            
            JOIN manages m ON m.facility_name = f.name
            JOIN person pers ON pers.SSN = emp.SSN AND m.facility_name = f.name AND m.medicarenumber = emp.medicarenumber
            
            GROUP BY f.name
            ORDER BY p.provincename, c.cityname, f.type, doctor_count ASC;

-- name: query9
SELECT p.name, e.email, emp.facility_name, residence.address, 
e.medicarenumber, residence.phonenumber, residence.postalcode,
prov.provincename, c.cityname,
COUNT(CASE WHEN NOT r.isprimary THEN 1 END) AS num_of_secondary_residences
FROM employee as e
JOIN person p ON p.ssn = e.ssn
JOIN employment emp ON emp.medicarenumber = e.medicarenumber AND emp.facility_name = '${placeholder_facilityname}'
JOIN residency r ON r.ssn = e.ssn
JOIN residence ON residence.address = r.address AND r.isprimary = 1
JOIN city c ON c.address = residence.address
JOIN province prov ON prov.cityname = c.cityname
GROUP BY p.name, emp.facility_name, residence.address,
e.medicarenumber, prov.provincename, c.cityname
HAVING COUNT(CASE WHEN NOT r.isprimary THEN 1 END) > 0
ORDER BY emp.facility_name ASC, num_of_secondary_residences;

-- name: query1
SELECT * 
FROM ${EntityName};
            
-- name: query10
SELECT FacilityName, StartTime, EndTime FROM Schedule WHERE
            EmployeeMedicareNumber = "${value}" AND ScheduleDate BETWEEN '2001-04-01'
            AND '2025-04-30' ORDER BY FacilityName ASC, StartTime ASC;

-- name: query11
SELECT DISTINCT 
	ry.Address,
    r.Type,
    p.Name,
    p.Relationship,
    et.Role
FROM 
    Person p
JOIN 
    Residency ry ON p.SSN = ry.SSN
JOIN
	Residence r ON ry.Address = r.Address
LEFT join 
	Employee e ON e.SSN = p.SSN
LEFT JOIN 
	Employment et ON e.MedicareNumber = et.MedicareNumber
WHERE 
    ry.Address IN (
        SELECT Address 
        FROM Residency 
        WHERE SSN = "${SSN}"
    )
    AND p.SSN != "${SSN}";


-- name: query12
SELECT p.name, i.infectiondate, emp.facility_name,
COUNT(CASE WHEN NOT r.isprimary THEN 1 END) AS num_of_secondary_residences
FROM employee as e
JOIN person p ON p.ssn = e.ssn
JOIN infection i ON i.ssn = p.ssn
JOIN employment emp ON emp.medicarenumber = e.medicarenumber
JOIN residency r ON r.ssn = e.ssn
WHERE CURDATE() - i.infectiondate < 14
GROUP BY p.name, i.infectiondate, emp.facility_name
ORDER BY emp.facility_name ASC, num_of_secondary_residences;

-- name: query13
SELECT *
FROM emaillog
WHERE Subject = '${placeholder_facilityname} - COVID-19 Exposure' 
AND SendDate BETWEEN DATE_SUB(CURDATE(), INTERVAL ${placeholder_day} DAY) AND CURDATE()
ORDER BY SendDate DESC;



-- name: query14
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

-- name: query15
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
HAVING COUNT(emp.MedicareNumber) >= 2;

-- name: query16
SELECT 
    e.Role,
    COUNT(DISTINCT e.MedicareNumber) AS TotalEmployees,
    COUNT(DISTINCT CASE WHEN i.Type = 'COVID-19' THEN e.MedicareNumber END) AS EmployeesWithCOVID19
FROM 
    employment e
JOIN 
    Employee emp ON e.MedicareNumber = emp.MedicareNumber
LEFT JOIN 
    Infection i ON emp.SSN = i.SSN
GROUP BY 
    e.Role
ORDER BY 
    e.Role ASC;

-- name: query18
SELECT 
    province.provincename,
    COUNT(facility.name) AS numOfFacilities,
    COUNT(employment.medicarenumber) AS numOfEmployees,
    SUM(facility.capacity) AS totalcapacity,
    SUM(TIMESTAMPDIFF(SECOND, schedule.starttime, schedule.endtime)) AS totalSecondsScheduled
FROM 
    city
JOIN 
    facility ON city.address = facility.address
JOIN 
    province ON province.cityname = city.cityname
LEFT JOIN 
    employment ON employment.facility_name = facility.name
JOIN 
    employee ON employee.medicarenumber = employment.medicarenumber
JOIN 
    person ON person.ssn = employee.ssn
LEFT JOIN 
    infection ON person.ssn = infection.ssn
LEFT JOIN 
    schedule ON schedule.facilityname = facility.name
WHERE 
    schedule.starttime BETWEEN ${StartDate} AND ${EndDate}
    AND schedule.endtime BETWEEN ${StartDate} AND ${EndDate}
GROUP BY 
    province.provincename; 

-- name: query17
WITH EmployeeCounts AS (
    SELECT 
        e.Role,
        COUNT(DISTINCT e.MedicareNumber) AS TotalEmployees,
        COUNT(DISTINCT CASE WHEN i.Type = 'COVID-19' THEN e.MedicareNumber END) AS EmployeesWithCOVID19
    FROM 
        employment e
    JOIN 
        Employee emp ON e.MedicareNumber = emp.MedicareNumber
    LEFT JOIN 
        Infection i ON emp.SSN = i.SSN
    GROUP BY 
        e.Role
)
SELECT 
    ec.Role,
    ec.TotalEmployees,
    ec.TotalEmployees - COALESCE(ec.EmployeesWithCOVID19, 0) AS EmployeesWithoutCOVID19
FROM 
    EmployeeCounts ec
ORDER BY 
    ec.Role ASC;
