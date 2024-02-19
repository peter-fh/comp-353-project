-- Even Queries
-- ii
SELECT 
    p.SSN AS employee_id,
    (SELECT COUNT(*) FROM Residency WHERE Address = housing.Address AND housing.Relationship = "Roommate")as number_of_roomates, 
    (SELECT COUNT(*) FROM Residency WHERE Address = housing.Address AND housing.Relationship = "Dependent") as number_of_roomates,
    (SELECT COUNT(*) FROM Residency WHERE Address = housing.Address AND housing.Relationship = "Parent") as number_of_roomates, 
    (SELECT COUNT(*) FROM Residency WHERE Address = housing.Address) as number_of_roomates
FROM 	
    (((SELECT SSN, Relationship FROM Person WHERE Person.ssn IN (SELECT SSN FROM EMPLOYEE)) as p)
    JOIN 
    Residency ON p.SSN = Residency.SSN) as housing;


-- iv 
SELECT
    f.province as p, 
    SUM(CASE WHEN f.province = infection_data.province THEN 1 ELSE 0 END) as province_employee_count,
    SUM(CASE WHEN f.province = infection_data.province AND infection_Data.recoveryDate IS NULL THEN 1 ELSE 0 END) as infected_employees 
FROM ( 
    employment e 
    JOIN facility f ON e.HospitalName = f.Name 
    JOIN employee em ON e.MedicareNumber = em.MedicareNumber 
    JOIN infection inf ON em.ssn = inf.ssn
    ) as infection_data
ORDER BY infected_employees;


-- vi 
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
AND person.SSN NOT IN (SELECT vaccine.SSN FROM vaccine)
AND person.SSN NOT IN (SELECT infection.SSN FROM infection)
ORDER BY employment.role, person.name;


-- viii 

