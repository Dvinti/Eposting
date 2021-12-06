-- Create a view all employees lives in Bakersfield

DROP VIEW Bakersfield_Employees;
CREATE VIEW Bakersfield_Employees AS
SELECT e.Fname, e.Lname, e.DOB, e.SSN, e.address, e.city, e.state
FROM employee AS e
WHERE city = "Bakersfield";

SELECT * FROM Bakersfield_Employees;

-- Create a view where all full-time jobs are shown

DROP VIEW Full_Time_Work;
CREATE VIEW Full_Time_Work AS
SELECT jl.name, jt.type
FROM job_listing AS jl
INNER JOIN jobtype AS jt 
ON jl.jobtypeID = jt.ID
WHERE jobtypeID = 1;

SELECT * FROM Full_Time_Work;

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