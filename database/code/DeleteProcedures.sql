-- Create Procedure for Deleting Employees

DROP PROCEDURE IF EXISTS DeleteEmployee;

DELIMITER //

CREATE PROCEDURE DeleteEmployee(ID int(11))
BEGIN
    DELETE FROM employee WHERE UserID = ID;
END;
//
DELIMITER ;