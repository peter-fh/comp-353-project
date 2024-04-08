
/*WHERE s.ScheduleDate BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY);*/

SELECT 
    s.EmployeeMedicareNumber,
    CONCAT(s.ScheduleDate, ' ', s.StartTime, ' - ', s.EndTime) AS ScheduleString
FROM Schedule s;

DELIMITER //

CREATE PROCEDURE schedule_event()
BEGIN
    SELECT 
	EmployeeMedicareNumber,
	CONCAT(s.ScheduleDate, ' ', s.StartTime, ' - ', s.EndTime) AS ScheduleString
    FROM Schedule s
    WHERE ScheduleDate BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY);

END //



CREATE TRIGGER schedule_event
AFTER INSERT ON Schedule
FOR EACH ROW
BEGIN
END // 

DELIMITER ; 
