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


SELECT 