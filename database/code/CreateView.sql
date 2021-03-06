-- Create a view all employees lives in Bakersfield

DROP VIEW Bakersfield_Employees;
CREATE VIEW Bakersfield_Employees AS
SELECT e.Fname, e.Lname, e.DOB, e.SSN, e.address, e.city, e.state
FROM employee AS e
WHERE city = "Bakersfield";

SELECT * FROM Bakersfield_Employees;

----------------------------------------------------------------------------------------------------------------------------------------------------
-- A Shortened version of employee without private data

DROP VIEW ShortEmployee;
CREATE VIEW ShortEmployee AS
SELECT UserID, Fname, Lname, DOB, address, city, state
FROM employee;

SELECT * FROM ShortEmployee;

----------------------------------------------------------------------------------------------------------------------------------------------------
-- Create a view where all jobs are shown

DROP VIEW IF EXISTS Jobs;
CREATE VIEW Jobs AS
SELECT DISTINCT jl.name AS "Professions", jt.type AS "Type", s.skill AS "Required Skills"
FROM job_listing AS jl
INNER JOIN jobtype AS jt
INNER JOIN requires AS r ON r.job_listingID = jl.ID
INNER JOIN skills AS s ON r.skill_ID = s.ID;

SELECT * FROM Jobs;

----------------------------------------------------------------------------------------------------------------------------------------------------
-- Create a view for job listing where it requires Engineering Mathematics

DROP VIEW Engineering_Mathematics;
CREATE VIEW Engineering_Mathematics AS
SELECT jl.name, s.skill, jt.type, r.exp_years
FROM job_listing AS jl
JOIN jobtype AS jt ON jl.jobtypeID = jt.ID
JOIN requires AS r ON r.job_listingID = jl.ID
JOIN skills AS s ON r.skill_ID = s.ID
WHERE skill = "Engineering Mathematics";

SELECT * FROM Engineering_Mathematics;

----------------------------------------------------------------------------------------------------------------------------------------------------
-- Shows a resume that has the name, date of birth, ssn, the skills they have and the number of experience years

DROP VIEW IF EXISTS ShortResume;
CREATE VIEW ShortResume AS
SELECT e.UserID, e.Fname, e.Lname, e.DOB, e.email, s.skill, i.exp_years
FROM employee AS e
JOIN resume AS r ON r.employeeUserID = e.UserID
JOIN includes AS i ON i.resumeID = r.ID
JOIN skills AS s ON s.ID = i.skill_ID;

SELECT * FROM ShortResume;

----------------------------------------------------------------------------------------------------------------------------------------------------
-- Creates a view to show profile information 

DROP VIEW IF EXISTS Profile;
CREATE VIEW Profile AS
Select e.username, CONCAT(e.Fname, ' ', e.Lname) AS "Name", 
e.DOB, e.email, CONCAT(e.address, ', ', e.city, ', ', e.state) AS "Address"
FROM employee as e;

SELECT * FROM Profile;

----------------------------------------------------------------------------------------------------------------------------------------------------
-- Creates a view to show the number of applications submitted from employees

DROP VIEW IF EXISTS EmployeeApplications;
CREATE VIEW EmployeeApplications AS
SELECT CONCAT(e.Fname, ' ', e.Lname) AS "Name",
COUNT(a.job_listingID) AS "Number of Applications"
FROM employee AS e 
JOIN apply AS a ON e.UserID = a.employeeUserID
GROUP BY a.job_listingID
ORDER BY e.UserID ASC;


SELECT * FROM EmployeeApplications;
----------------------------------------------------------------------------------------------------------------------------------------------------