DROP TABLE IF EXISTS manages_job;

CREATE TABLE manages_job (
    job_listingID INTEGER PRIMARY KEY,
    CONSTRAINT `fk_manages_job_listing` FOREIGN KEY (job_listingID) REFERENCES `job_listing` (ID) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO manages_job (job_listingID) VALUES ( 1);
INSERT INTO manages_job (job_listingID) VALUES ( 2);
INSERT INTO manages_job (job_listingID) VALUES ( 3);
INSERT INTO manages_job (job_listingID) VALUES ( 4);
INSERT INTO manages_job (job_listingID) VALUES ( 5);
INSERT INTO manages_job (job_listingID) VALUES ( 6);
INSERT INTO manages_job (job_listingID) VALUES ( 7);
INSERT INTO manages_job (job_listingID) VALUES ( 8);
INSERT INTO manages_job (job_listingID) VALUES ( 9);
INSERT INTO manages_job (job_listingID) VALUES (10);
INSERT INTO manages_job (job_listingID) VALUES (11);
INSERT INTO manages_job (job_listingID) VALUES (12);
INSERT INTO manages_job (job_listingID) VALUES (13);
INSERT INTO manages_job (job_listingID) VALUES (14);
INSERT INTO manages_job (job_listingID) VALUES (15);
INSERT INTO manages_job (job_listingID) VALUES (16);
INSERT INTO manages_job (job_listingID) VALUES (17);
INSERT INTO manages_job (job_listingID) VALUES (18);
INSERT INTO manages_job (job_listingID) VALUES (19);
INSERT INTO manages_job (job_listingID) VALUES (20);
INSERT INTO manages_job (job_listingID) VALUES (21);
INSERT INTO manages_job (job_listingID) VALUES (22);
INSERT INTO manages_job (job_listingID) VALUES (23);
INSERT INTO manages_job (job_listingID) VALUES (24);
INSERT INTO manages_job (job_listingID) VALUES (25);
INSERT INTO manages_job (job_listingID) VALUES (26);
INSERT INTO manages_job (job_listingID) VALUES (27);
INSERT INTO manages_job (job_listingID) VALUES (28);
INSERT INTO manages_job (job_listingID) VALUES (29);
INSERT INTO manages_job (job_listingID) VALUES (30);