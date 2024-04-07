SELECT f.name, f.address, c.CityName, p.provinceName, postalcode.code, f.phone, f.website, f.type,
f.capacity, eM.name, 
SUM(CASE WHEN e.role = 'doctor' THEN 1 ELSE 0 END) AS doctor_count,
SUM(CASE WHEN e.role = 'nurse' THEN 1 ELSE 0 END) AS nurse_count,
SUM(CASE WHEN e.role = 'janitor' THEN 1 ELSE 0 END) AS janitor_count,
FROM facilities f
JOIN employment e ON f.name = e.fName
JOIN employment eM ON f.name = eM.fName AND eM.role = 'manager' 
JOIN postalcode pc ON pc.name = f.name
JOIN city c ON c.code = pc.code
JOIN province p ON c.cityname = p.cityname
GROUP BY f.name
ORDER BY p.name, c.cityname, f.type, doctor_count ASC;