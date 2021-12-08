DROP TABLE IF EXISTS manages_resume;

CREATE TABLE manages_resume (
  resumeID INTEGER PRIMARY KEY,
  CONSTRAINT `fk_manages_resume` FOREIGN KEY (resumeID) REFERENCES `resume` (ID) ON DELETE CASCADE
);

INSERT INTO manages_resume (resumeID) VALUES ( 1);
INSERT INTO manages_resume (resumeID) VALUES ( 2);
INSERT INTO manages_resume (resumeID) VALUES ( 3);
INSERT INTO manages_resume (resumeID) VALUES ( 4);
INSERT INTO manages_resume (resumeID) VALUES ( 5);
INSERT INTO manages_resume (resumeID) VALUES ( 6);
INSERT INTO manages_resume (resumeID) VALUES ( 7);
INSERT INTO manages_resume (resumeID) VALUES ( 8);
INSERT INTO manages_resume (resumeID) VALUES ( 9);
INSERT INTO manages_resume (resumeID) VALUES (10);
INSERT INTO manages_resume (resumeID) VALUES (11);
INSERT INTO manages_resume (resumeID) VALUES (12);
INSERT INTO manages_resume (resumeID) VALUES (13);
INSERT INTO manages_resume (resumeID) VALUES (14);
INSERT INTO manages_resume (resumeID) VALUES (15);
INSERT INTO manages_resume (resumeID) VALUES (16);
INSERT INTO manages_resume (resumeID) VALUES (17);
INSERT INTO manages_resume (resumeID) VALUES (18);
INSERT INTO manages_resume (resumeID) VALUES (19);
INSERT INTO manages_resume (resumeID) VALUES (20);
INSERT INTO manages_resume (resumeID) VALUES (21);
INSERT INTO manages_resume (resumeID) VALUES (22);
INSERT INTO manages_resume (resumeID) VALUES (23);
INSERT INTO manages_resume (resumeID) VALUES (24);
INSERT INTO manages_resume (resumeID) VALUES (25);
INSERT INTO manages_resume (resumeID) VALUES (26);
INSERT INTO manages_resume (resumeID) VALUES (27);
INSERT INTO manages_resume (resumeID) VALUES (28);
INSERT INTO manages_resume (resumeID) VALUES (29);
INSERT INTO manages_resume (resumeID) VALUES (30);