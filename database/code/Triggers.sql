-- Create Trigger a new resume when creating a new employee

DROP TRIGGER IF EXISTS newEmployee;

DELIMITER //

CREATE TRIGGER newEmployee
AFTER INSERT ON employee
FOR EACH ROW
BEGIN
    INSERT INTO resume (employeeUserID) VALUES (NEW.UserID);
END;
//

DELIMITER ;

--INSERT INTO employee (UserID, Fname, Lname, DOB, SSN, address, city, state, email, username, password) VALUES (36, 'Fname', 'Lname', '1990-12-28', '180-48-1934', '206 S Second Ave', 'Arcadia', 'CA', 'random@yahoo.com', 'nRandom', 'MnfCi02lke');

-- If an employee is removed, the resume is also removed.

DROP TRIGGER IF EXISTS delEmployee;

DELIMITER //

CREATE TRIGGER delEmployee
AFTER DELETE ON employee
FOR EACH ROW
BEGIN
    DELETE FROM resume WHERE employeeUserID = Old.UserID;
END;
//

DELIMITER ;

-- If email is not valid, will not insert

DROP TRIGGER validEmailEmployee;

DELIMITER //

CREATE TRIGGER validEmailEmployee
BEFORE INSERT ON employee
FOR EACH ROW
BEGIN
    IF NEW.email NOT LIKE '_%@_%.__%' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email field is not valid';
    END IF;
END;
//

DELIMITER ;

DROP TRIGGER validEmailEmployer;

DELIMITER //

CREATE TRIGGER validEmailEmployer
BEFORE INSERT ON employee
FOR EACH ROW
BEGIN
    IF NEW.email NOT LIKE '_%@_%.__%' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email field is not valid';
    END IF;
END;
//

DELIMITER ;