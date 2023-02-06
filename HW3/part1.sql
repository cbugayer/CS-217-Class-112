--query1
SELECT StfLastname||', '||StfFirstName AS 'Name',
StfStreetAddress||', '||StfCity||', '||StfState||', '||StfZipCode AS 'Address',
StfAreaCode||'-'|| StfPhoneNumber AS 'Phone'
FROM Faculty NATURAL JOIN Staff;

--query2
SELECT 1.0*COUNT(*) / (SELECT COUNT(*) FROM Students) FROM Students
JOIN Majors ON Students.StudMajor = Majors.MajorID 
WHERE Major IN ('English', 'Math');

--query3
SELECT StudFirstName||' '||StudLastName AS 'Name'
FROM Students 
EXCEPT SELECT StudFirstName||' '||StudLastName 
FROM Students NATURAL JOIN Student_Schedules 
NATURAL JOIN Student_Class_Status WHERE ClassStatusDescription = 'Withdrew';

--query4
SELECT DeptName, StfFirstName||' '||StfLastname AS 'Name', DateHired
FROM Departments JOIN Staff ON Staff.StaffID = Departments.DeptChair;

--query5
SELECT StudentID, 
StudFirstName||' '||StudLastName AS 'Name',
CASE WHEN StudGender = 'F' THEN 'Female'
WHEN StudGender = 'M' THEN 'Male'
ELSE 'Not Specified' END AS 'Gender'
FROM Students;