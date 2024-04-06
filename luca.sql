/*  For a given employee, get the details of all 
the schedules she/he has been scheduled during 
a specific period of time. Details include 
facility name, day of the year, start time and 
end time. Results should be displayed sorted in 
ascending order by facility name, then by day of 
the year, the by start time. */

SELECT 
    HospitalName, DAY(StartDate) AS DayOfYear, 
    CAST (StartDate AS time), 
    CAST (EndDate AS time)
FROM
    Employment