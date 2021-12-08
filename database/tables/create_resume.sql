DROP TABLE IF EXISTS resume;

CREATE TABLE resume (
  ID INTEGER PRIMARY KEY AUTO_INCREMENT,
  employeeUserID INTEGER,
  CONSTRAINT `fk_resume_employee` FOREIGN KEY (employeeUserID) REFERENCES `employee` (UserID) ON DELETE CASCADE
);

INSERT INTO resume (employeeUserID) VALUES (1);
INSERT INTO resume (employeeUserID) VALUES (2);
INSERT INTO resume (employeeUserID) VALUES (3);
INSERT INTO resume (employeeUserID) VALUES (4);
INSERT INTO resume (employeeUserID) VALUES (5);
INSERT INTO resume (employeeUserID) VALUES (6);
INSERT INTO resume (employeeUserID) VALUES (7);
INSERT INTO resume (employeeUserID) VALUES (8);
INSERT INTO resume (employeeUserID) VALUES (9);
INSERT INTO resume (employeeUserID) VALUES (10);
INSERT INTO resume (employeeUserID) VALUES (11);
INSERT INTO resume (employeeUserID) VALUES (12);
INSERT INTO resume (employeeUserID) VALUES (13);
INSERT INTO resume (employeeUserID) VALUES (14);
INSERT INTO resume (employeeUserID) VALUES (15);
INSERT INTO resume (employeeUserID) VALUES (16);
INSERT INTO resume (employeeUserID) VALUES (17);
INSERT INTO resume (employeeUserID) VALUES (18);
INSERT INTO resume (employeeUserID) VALUES (19);
INSERT INTO resume (employeeUserID) VALUES (20);
INSERT INTO resume (employeeUserID) VALUES (21);
INSERT INTO resume (employeeUserID) VALUES (22);
INSERT INTO resume (employeeUserID) VALUES (23);
INSERT INTO resume (employeeUserID) VALUES (24);
INSERT INTO resume (employeeUserID) VALUES (25);
INSERT INTO resume (employeeUserID) VALUES (26);
INSERT INTO resume (employeeUserID) VALUES (27);
INSERT INTO resume (employeeUserID) VALUES (28);
INSERT INTO resume (employeeUserID) VALUES (29);
INSERT INTO resume (employeeUserID) VALUES (30);
