DROP TABLE IF EXISTS apply;

CREATE TABLE apply (
  appID INTEGER PRIMARY KEY AUTO_INCREMENT,
  employeeUserID INTEGER,
  job_listingID INTEGER,
  CONSTRAINT `fk_apply_employee` FOREIGN KEY (employeeUserID) REFERENCES `employee` (UserID) ON DELETE CASCADE,
  CONSTRAINT `fk_apply_jobListing` FOREIGN KEY (job_listingID) REFERENCES `job_listing` (ID) ON DELETE CASCADE
);

INSERT INTO apply (employeeUserID, job_listingID) VALUES ( 1, 12);
INSERT INTO apply (employeeUserID, job_listingID) VALUES ( 2, 28);
INSERT INTO apply (employeeUserID, job_listingID) VALUES ( 3, 27);
INSERT INTO apply (employeeUserID, job_listingID) VALUES ( 4, 6);
INSERT INTO apply (employeeUserID, job_listingID) VALUES ( 5, 15);
INSERT INTO apply (employeeUserID, job_listingID) VALUES ( 6, 24);
INSERT INTO apply (employeeUserID, job_listingID) VALUES ( 7, 1);
INSERT INTO apply (employeeUserID, job_listingID) VALUES ( 8, 18);
INSERT INTO apply (employeeUserID, job_listingID) VALUES ( 9, 16);
INSERT INTO apply (employeeUserID, job_listingID) VALUES (10, 27);
INSERT INTO apply (employeeUserID, job_listingID) VALUES (11, 14);
INSERT INTO apply (employeeUserID, job_listingID) VALUES (12, 17);
INSERT INTO apply (employeeUserID, job_listingID) VALUES (13, 11);
INSERT INTO apply (employeeUserID, job_listingID) VALUES (14, 24);
INSERT INTO apply (employeeUserID, job_listingID) VALUES (15, 11);
INSERT INTO apply (employeeUserID, job_listingID) VALUES (16, 4);
INSERT INTO apply (employeeUserID, job_listingID) VALUES (17, 22);
INSERT INTO apply (employeeUserID, job_listingID) VALUES (18, 7);
INSERT INTO apply (employeeUserID, job_listingID) VALUES (19, 23);
INSERT INTO apply (employeeUserID, job_listingID) VALUES (20, 5);
INSERT INTO apply (employeeUserID, job_listingID) VALUES (21, 26);
INSERT INTO apply (employeeUserID, job_listingID) VALUES (22, 10);
INSERT INTO apply (employeeUserID, job_listingID) VALUES (23, 3);
INSERT INTO apply (employeeUserID, job_listingID) VALUES (24, 21);
INSERT INTO apply (employeeUserID, job_listingID) VALUES (25, 9);
INSERT INTO apply (employeeUserID, job_listingID) VALUES (26, 23);
INSERT INTO apply (employeeUserID, job_listingID) VALUES (27, 22);
INSERT INTO apply (employeeUserID, job_listingID) VALUES (28, 7);
INSERT INTO apply (employeeUserID, job_listingID) VALUES (29, 27);
INSERT INTO apply (employeeUserID, job_listingID) VALUES (30, 29);