DROP TABLE IF EXISTS manages_job;

CREATE TABLE manages_job (
    job_listingID INTEGER PRIMARY KEY,
    CONSTRAINT `fk_manages_job_listing` FOREIGN KEY (job_listingID) REFERENCES `job_listing` (ID) ON DELETE CASCADE
);
