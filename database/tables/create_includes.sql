DROP TABLE IF EXISTS includes;

CREATE TABLE includes (
  resumeID INTEGER,
  skill_ID INTEGER,
  exp_years INTEGER(2),
  PRIMARY KEY (resumeID, skill_ID),
  CONSTRAINT `fk_includes_resume` FOREIGN KEY (resumeID) REFERENCES `resume` (ID) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_includes_skills` FOREIGN KEY (skill_ID) REFERENCES `skills` (ID) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES ( 1, (SELECT ID FROM skills WHERE skill="Engineering Mathematics"), 7);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES ( 2, (SELECT ID FROM skills WHERE skill="Applied Mathematics"), 3);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES ( 3, (SELECT ID FROM skills WHERE skill="Finance and Accounting"), 3);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES ( 4, (SELECT ID FROM skills WHERE skill="Critical Thinking"), 2);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES ( 5, (SELECT ID FROM skills WHERE skill="Problem Solving"), 2);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES ( 6, (SELECT ID FROM skills WHERE skill="Flexibles"), 5);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES ( 7, (SELECT ID FROM skills WHERE skill="Mathematics"), 9);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES ( 8, (SELECT ID FROM skills WHERE skill="Finance Domain"), 10);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES ( 9, (SELECT ID FROM skills WHERE skill="Commercial Awareness"), 7);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES (10, (SELECT ID FROM skills WHERE skill="HR Administration"), 10);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES (11, (SELECT ID FROM skills WHERE skill="Experienced Speaker"), 2);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES (12, (SELECT ID FROM skills WHERE skill="Structural Geology"), 12);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES (13, (SELECT ID FROM skills WHERE skill="Technical Skillset"), 7);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES (14, (SELECT ID FROM skills WHERE skill="Mathematics Education"), 5);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES (15, (SELECT ID FROM skills WHERE skill="Business Knowledge"), 4);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES (16, (SELECT ID FROM skills WHERE skill="Digital Networking"), 4);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES (17, (SELECT ID FROM skills WHERE skill="Sales Management"), 10);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES (18, (SELECT ID FROM skills WHERE skill="Organization Skills"), 1);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES (19, (SELECT ID FROM skills WHERE skill="Leadership"), 2);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES (20, (SELECT ID FROM skills WHERE skill="University Teaching"), 6);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES (21, (SELECT ID FROM skills WHERE skill="Javascript"), 4);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES (22, (SELECT ID FROM skills WHERE skill="Media Production"), 3);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES (23, (SELECT ID FROM skills WHERE skill="Object-Oriented Programming (OOP)"), 6);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES (24, (SELECT ID FROM skills WHERE skill="Microsoft Office"), 6);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES (25, (SELECT ID FROM skills WHERE skill="Patient Care"), 11);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES (26, (SELECT ID FROM skills WHERE skill="English Literature"), 1);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES (27, (SELECT ID FROM skills WHERE skill="Computer Skills"), 15);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES (28, (SELECT ID FROM skills WHERE skill="Executive Presentation Skills"), 10);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES (29, (SELECT ID FROM skills WHERE skill="Database Systems"), 3);
INSERT INTO includes (resumeID, skill_ID, exp_years) VALUES (30, (SELECT ID FROM skills WHERE skill="Written Communication"), 6);