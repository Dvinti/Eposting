-- For Registering Employers

DROP PROCEDURE IF EXISTS RegisterEmployer;

DELIMITER //

CREATE PROCEDURE RegisterEmployer(param_company varchar(15), param_address varchar(30), param_city varchar(20), param_state varchar(3), param_email varchar(40), param_username varchar(30), param_password varchar(255) )
BEGIN
    SELECT COUNT(*) INTO @employerCount
    FROM employer
    WHERE username = param_username;

    IF @employerCount > 0 THEN
        SELECT NULL AS param_UserID, "Username already exists" AS 'Error';
    ELSE
        INSERT INTO employer (company, address, city, state, email, username, password) 	
        VALUES (param_company, param_address, param_city, param_state, param_email, param_username, param_password);
        SELECT UserID AS param_UserID, NULL AS 'Error' FROM employer WHERE username = param_username;
    END IF;
END;
//
DELIMITER ;

--CALL RegisterEmployer('CSUB','Address','Bakersfield','CA','@email','username','password');

----------------------------------------------------------------------------------------------------------------------------------------------------

-- For Registering Employees

DROP PROCEDURE IF EXISTS RegisterEmployee;

DELIMITER //
CREATE PROCEDURE RegisterEmployee(param_Fname varchar(30),param_Lname varchar(30),param_DOB date,param_SSN varchar(11),param_address varchar(30),param_city varchar(20),param_state varchar(3), param_email varchar(40),param_username varchar(30),param_password varchar(255) )
BEGIN
    SELECT COUNT(*) INTO @employeeCount
    FROM employee
    WHERE username = param_username;

    IF @employeeCount > 0 THEN
        SELECT NULL AS param_UserID, "Username already exists" AS 'Error';
    ELSE
        INSERT INTO employee (Fname, Lname, DOB, SSN, address, city, state, email, username, password)
        VALUES (param_Fname, param_Lname, param_DOB, param_SSN, param_address, param_city, param_state, param_email, param_username, param_password);
        SELECT UserID AS param_UserID, NULL AS 'Error' FROM employee WHERE username = param_username;
    END IF;
END;
//
DELIMITER ;

CALL RegisterEmployee('Fname','Lname','1970-11-24','SSN','Address','Bakersfield','CA','hello@email.com','username2','password3');

----------------------------------------------------------------------------------------------------------------------------------------------------

-- For updating resumes

DROP PROCEDURE IF EXISTS updateResume;

DELIMITER //

CREATE PROCEDURE updateResume(resID INT, skills INT, experience INT(2))
BEGIN
    UPDATE includes SET skill_ID = skills, exp_years = experience WHERE resumeID = resID;
END;
//

DELIMITER ;

--CALL updateResume(30, 29413, 4);

----------------------------------------------------------------------------------------------------------------------------------------------------

-- For creating a new joblist

DROP PROCEDURE IF EXISTS newJoblist;

DELIMITER //

CREATE PROCEDURE newJoblist(param_ID int(11), param_employerUserID int(11), param_name varchar(40), param_jobtypeID int(1), param_description text)
BEGIN
    SELECT COUNT(*) INTO @JobCount
    FROM job_listing
    WHERE ID = param_ID;

    IF @JobCount > 0 THEN
        SELECT NULL AS param_ID, "Job Listing already exists" AS 'Error';
    ELSE
        INSERT INTO job_listing(employerUserID, ID, name, jobtypeID, description)
        VALUES (param_ID, param_employerUserID, param_name,param_jobtypeID, param_description);
    END IF;
END;
//

DELIMITER ;

----------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------

-- For creating new applications

DROP PROCEDURE IF EXISTS newApplication;

DELIMITER //

CREATE PROCEDURE newApplication(userID INT, jobID INT)
BEGIN
    SELECT COUNT(*) INTO @appCount
    FROM apply
    WHERE employeeUserID = userID
    AND job_listingID = jobID;

    IF @appCount > 0 THEN
        SELECT NULL AS ID, "Job Application already exists" AS 'ERROR';
    ELSE
        INSERT INTO apply (employeeUserID, job_listingID) VALUES (UserID, jobID);
    END IF;
END;
//

DELIMITER ;

CALL newApplication(29, 24);
----------------------------------------------------------------------------------------------------------------------------------------------------
-- Shows a view where it returns the number of applications on each job listing

DROP PROCEDURE IF EXISTS AppliedJobs;

DELIMITER //

CREATE PROCEDURE AppliedJobs()
BEGIN
    SELECT jl.name AS "Professions", j.type AS "Type", COUNT(a.appID) AS Applications
    FROM job_listing AS jl
    INNER JOIN apply AS a ON job_listingID = jl.ID
    INNER JOIN jobtype as j ON j.ID = jl.jobtypeID
    GROUP BY job_listingID
    ORDER BY jl.name ASC;
END;
//

DELIMITER ;

CALL AppliedJobs();