DROP TABLE IF EXISTS apply;

CREATE TABLE apply (
  employeeUserID INTEGER,
  job_listingID INTEGER,
  PRIMARY KEY (employeeUserID, job_listingID),
  CONSTRAINT `fk_apply_employee` FOREIGN KEY (employeeUserID) REFERENCES `employee` (UserID) ON DELETE CASCADE,
  CONSTRAINT `fk_apply_jobListing` FOREIGN KEY (job_listingID) REFERENCES `job_listing` (ID) ON DELETE CASCADE
);