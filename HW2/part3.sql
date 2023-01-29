-- query1
SELECT StudFirstName, StudLastName, Major, COUNT(ClassID)
FROM Majors
JOIN Students ON Majors.MajorID = Students.StudMajor
LEFT NATURAL JOIN Student_Schedules 
NATURAL JOIN Student_Class_Status
WHERE ClassStatusDescription IN ('Enrolled', 'Completed')
GROUP BY StudentID;

-- query2
SELECT DISTINCT SubjectCode, SubjectName
FROM Classes
NATURAL JOIN Subjects
JOIN Student_Schedules
ON Classes.ClassID = Student_Schedules.ClassID
NATURAL JOIN Class_Rooms
NATURAL JOIN Buildings
NATURAL JOIN Student_Class_Status
WHERE BuildingName = 'College Center'
AND SemesterNumber = 1
AND MondaySchedule+TuesdaySchedule+WednesdaySchedule+ThursdaySchedule+FridaySchedule+SaturdaySchedule > 2
AND ClassStatusDescription IN ('Enrolled', 'Completed');

-- query3
SELECT StfFirstName, StfLastname, Title, Tenured, AVG(ProficiencyRating) 
FROM Staff 
LEFT NATURAL JOIN Faculty
NATURAL JOIN Faculty_Subjects
GROUP BY StaffID;

-- query4
SELECT SubjectCode, SubjectName 
FROM Subjects
LEFT NATURAL JOIN Faculty_Subjects
WHERE StaffID IS NULL;