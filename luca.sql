/*  For a given employee, get the details of all 
the schedules she/he has been scheduled during 
a specific period of time. Details include 
facility name, day of the year, start time and 
end time. Results should be displayed sorted in 
ascending order by facility name, then by day of 
the year, the by start time. */

SELECT 
    FacilityName,
    strftime(ScheduleDate) AS DayOfYear,
    StartTime,
    EndTime
FROM 
    Schedule
WHERE 
    EmployeeMedicareNumber = 'EMP001' -- Replace 'EMP001' with the desired employee's MedicareNumber
    AND ScheduleDate BETWEEN '2024-04-01' AND '2024-04-30' -- Specify the desired period of time
ORDER BY 
    FacilityName ASC,
    DayOfYear ASC,
    StartTime ASC;


/* For a given employee, get the details of all the 
people who live with the employee at the primary address 
and at all the secondary addresses. For every address the 
employee has, you need to provide the residence type for 
that address, and for every person who lives at that address,
you need to provide the person’s first name, last name, 
occupation of the person, and the relationship with the employee.*/

