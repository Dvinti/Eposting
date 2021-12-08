-- CALL deleteJob(31);

DROP PROCEDURE IF EXISTS deleteEmployee;

DELIMITER //

CREATE PROCEDURE deleteEmployee(ID INT)
BEGIN
    DELETE FROM employee WHERE UserID = ID;
END;
//

DELIMITER ;

-- CALL deleteEmployee(30);

-- Create Procedure for deleting Job Listings

DROP PROCEDURE IF EXISTS deleteJob;

DELIMITER //

CREATE PROCEDURE deleteJob(jobID INT)
BEGIN
    DELETE FROM job_listing WHERE ID = jobID;
END;
//

DELIMITER ;

-- CALL deleteJob(31);