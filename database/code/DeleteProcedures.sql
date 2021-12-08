-- For deleting Employees

DROP PROCEDURE IF EXISTS deleteEmployee;

DELIMITER //

CREATE PROCEDURE deleteEmployee(ID INT)
BEGIN
    DELETE FROM employee WHERE UserID = ID;
END;
//

DELIMITER ;

-- CALL deleteEmployee(30);

----------------------------------------------------------------------------------------------------------------------------------------------------

-- For deleting Job Listings

DROP PROCEDURE IF EXISTS deleteJob;

DELIMITER //

CREATE PROCEDURE deleteJob(jobID INT)
BEGIN
    DELETE FROM job_listing WHERE ID = jobID;
END;
//

DELIMITER ;

-- CALL deleteJob(31);

----------------------------------------------------------------------------------------------------------------------------------------------------

-- For deleting applications

DROP PROCEDURE IF EXISTS deleteApplication;

DELIMITER //

CREATE PROCEDURE deleteApplication(appID INT)
BEGIN
    DELETE FROM apply WHERE ID = appID;
END;
//

DELIMITER ;

-- CALL deleteApplication(28);