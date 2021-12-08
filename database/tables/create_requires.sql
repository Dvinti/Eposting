DROP TABLE IF EXISTS requires;

CREATE TABLE requires
(
    job_listingID INTEGER,
    exp_years INTEGER(2),
    skill_ID INTEGER,
    PRIMARY KEY (job_listingID, skill_ID),
    CONSTRAINT `fk_requires_joblisting` FOREIGN KEY (job_listingID) REFERENCES `job_listing` (ID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `fk_requires_skills` FOREIGN KEY (skill_ID) REFERENCES `skills` (ID) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (1, 4, (SELECT ID FROM skills WHERE skill="Engineering Mathematics"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (1, 4, (SELECT ID FROM skills WHERE skill="Commercial Awareness"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (1, 4, (SELECT ID FROM skills WHERE skill="Written Communication"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (1, 4, (SELECT ID FROM skills WHERE skill="Oral Communication"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (1, 4, (SELECT ID FROM skills WHERE skill="Visual Identity"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (2, 4, (SELECT ID FROM skills WHERE skill="Mathematics"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (2, 4, (SELECT ID FROM skills WHERE skill="Interpersonal Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (2, 4, (SELECT ID FROM skills WHERE skill="Ethics"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (3, 3, (SELECT ID from skills WHERE skill="Qualitative & Quantitative Research Methodologies"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (3, 3, (SELECT ID from skills WHERE skill="HR Administration"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (3, 3, (SELECT ID from skills WHERE skill="Written Communication"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (3, 3, (SELECT ID from skills WHERE skill="Oral Communication"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (3, 3, (SELECT ID from skills WHERE skill="Microsoft Office"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (4, 2, (SELECT ID from skills WHERE skill="Written Communication"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (4, 2, (SELECT ID from skills WHERE skill="Oral Communication"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (4, 2, (SELECT ID from skills WHERE skill="Flexibles"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (4, 2, (SELECT ID from skills WHERE skill="Calender"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (4, 2, (SELECT ID from skills WHERE skill="Presentation Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (4, 2, (SELECT ID from skills WHERE skill="Organizational & Writing Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (5, 5, (SELECT ID from skills WHERE skill="Written Communication"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (5, 5, (SELECT ID from skills WHERE skill="Oral Communication"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (5, 5, (SELECT ID from skills WHERE skill="Finance and Accounting"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (5, 5, (SELECT ID from skills WHERE skill="Microsoft Excel"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (6, 5, (SELECT ID from skills WHERE skill="Interpersonal Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (6, 5, (SELECT ID from skills WHERE skill="Technical Skillset"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (6, 5, (SELECT ID from skills WHERE skill="Communication Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (6, 5, (SELECT ID from skills WHERE skill="Organization Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (7, 3, (SELECT ID from skills WHERE skill="Problem Solving"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (7, 3, (SELECT ID from skills WHERE skill="Problem Analysis"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (7, 3, (SELECT ID from skills WHERE skill="Scientific Communications"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (7, 3, (SELECT ID from skills WHERE skill="Scientific Writing"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (7, 3, (SELECT ID from skills WHERE skill="Mathematics"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (8, 10, (SELECT ID from skills WHERE skill="Analytical Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (8, 10, (SELECT ID from skills WHERE skill="Applied Mathematics"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (8, 10, (SELECT ID from skills WHERE skill="Mathematical Statistics"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (8, 10, (SELECT ID from skills WHERE skill="Computer Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (8, 10, (SELECT ID from skills WHERE skill="Finance Domain"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (8, 10, (SELECT ID from skills WHERE skill="Interpersonal Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (9, 15, (SELECT ID from skills WHERE skill="Media Production"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (9, 15, (SELECT ID from skills WHERE skill="Experienced Speaker"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (9, 15, (SELECT ID from skills WHERE skill="Written Communication"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (9, 15, (SELECT ID from skills WHERE skill="Flexibles"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (9, 15, (SELECT ID from skills WHERE skill="Computer Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (10, 5, (SELECT ID from skills WHERE skill="Accounting Standards"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (10, 5, (SELECT ID from skills WHERE skill="Computer Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (10, 5, (SELECT ID from skills WHERE skill="QuickBooks Payroll"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (11, 4, (SELECT ID from skills WHERE skill="Circuits"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (11, 4, (SELECT ID from skills WHERE skill="Control Theory"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (11, 4, (SELECT ID from skills WHERE skill="Object-Oriented Programming (OOP)"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (11, 4, (SELECT ID from skills WHERE skill="VHDL"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (11, 4, (SELECT ID from skills WHERE skill="Communication Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (11, 4, (SELECT ID from skills WHERE skill="Presentation Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (12, 2, (SELECT ID from skills WHERE skill="University Teaching"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (12, 2, (SELECT ID from skills WHERE skill="English Literature"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (12, 2, (SELECT ID from skills WHERE skill="Computer Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (12, 2, (SELECT ID from skills WHERE skill="Communication Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (12, 2, (SELECT ID from skills WHERE skill="Organizational & Writing Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (13, 3, (SELECT ID from skills WHERE skill="Communication Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (13, 3, (SELECT ID from skills WHERE skill="Differential Diagnosis"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (13, 3, (SELECT ID from skills WHERE skill="Analytical Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (13, 3, (SELECT ID from skills WHERE skill="Patient Care"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (13, 3, (SELECT ID from skills WHERE skill="Risk Management Consulting"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (14, 0, (SELECT ID from skills WHERE skill="Structural Geology"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (14, 0, (SELECT ID from skills WHERE skill="Licensed Professional Geologist"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (14, 0, (SELECT ID from skills WHERE skill="Engineering Geology"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (14, 0, (SELECT ID from skills WHERE skill="Geological Mapping"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (15, 10, (SELECT ID from skills WHERE skill="Market Knowledge"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (15, 10, (SELECT ID from skills WHERE skill="Key Client Relationships"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (15, 10, (SELECT ID from skills WHERE skill="Negotiation"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (15, 10, (SELECT ID from skills WHERE skill="Consumer Insight"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (15, 10, (SELECT ID from skills WHERE skill="Sales Management"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (15, 10, (SELECT ID from skills WHERE skill="Business Development Consultancy"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (15, 10, (SELECT ID from skills WHERE skill="Computer Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (16, 8, (SELECT ID from skills WHERE skill="Communication Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (16, 8, (SELECT ID from skills WHERE skill="Administrative Organization"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (16, 8, (SELECT ID from skills WHERE skill="Problem Solving"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (16, 8, (SELECT ID from skills WHERE skill="Negotiation"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (16, 8, (SELECT ID from skills WHERE skill="Executive Presentation Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (17, 6, (SELECT ID from skills WHERE skill="Leadership"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (17, 6, (SELECT ID from skills WHERE skill="Communication Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (17, 6, (SELECT ID from skills WHERE skill="Problem Solving"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (17, 6, (SELECT ID from skills WHERE skill="Presentation Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (17, 6, (SELECT ID from skills WHERE skill="Organization Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (18, 1, (SELECT ID from skills WHERE skill="Analytical Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (18, 1, (SELECT ID from skills WHERE skill="Interpersonal Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (18, 1, (SELECT ID from skills WHERE skill="Science Education"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (18, 1, (SELECT ID from skills WHERE skill="Scientific Writing"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (19, 3, (SELECT ID from skills WHERE skill="PHP"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (19, 3, (SELECT ID from skills WHERE skill="SQL"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (19, 3, (SELECT ID from skills WHERE skill="Python"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (19, 3, (SELECT ID from skills WHERE skill="Problem Solving"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (19, 3, (SELECT ID from skills WHERE skill="Teamwork"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (19, 3, (SELECT ID from skills WHERE skill="Communication Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (19, 3, (SELECT ID from skills WHERE skill="Critical Thinking"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (20, 5, (SELECT ID from skills WHERE skill="Engineering Mathematics"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (20, 5, (SELECT ID from skills WHERE skill="Commercial Awareness"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (20, 5, (SELECT ID from skills WHERE skill="Written Communication"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (20, 5, (SELECT ID from skills WHERE skill="Oral Communication"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (20, 5, (SELECT ID from skills WHERE skill="Visual Identity"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (21, 2, (SELECT ID from skills WHERE skill="Oral Communication"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (21, 2, (SELECT ID from skills WHERE skill="Compassion"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (21, 2, (SELECT ID from skills WHERE skill="Problem Solving"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (21, 2, (SELECT ID from skills WHERE skill="Manual Dexterity"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (21, 2, (SELECT ID from skills WHERE skill="Dentistry"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (21, 2, (SELECT ID from skills WHERE skill="X-ray"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (22, 2, (SELECT ID from skills WHERE skill="Machinery Repair"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (22, 2, (SELECT ID from skills WHERE skill="Machinery Diagnostics"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (22, 2, (SELECT ID from skills WHERE skill="Communication Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (22, 2, (SELECT ID from skills WHERE skill="Problem Solving"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (22, 2, (SELECT ID from skills WHERE skill="Critical Thinking"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (23, 4, (SELECT ID from skills WHERE skill="Logical Approach"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (23, 4, (SELECT ID from skills WHERE skill="PHP"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (23, 4, (SELECT ID from skills WHERE skill="MySQL"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (23, 4, (SELECT ID from skills WHERE skill="MariaDB"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (23, 4, (SELECT ID from skills WHERE skill="Database Systems"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (23, 4, (SELECT ID from skills WHERE skill="Database Modeling"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (23, 4, (SELECT ID from skills WHERE skill="Organization Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (23, 4, (SELECT ID from skills WHERE skill="Problem Solving"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (23, 4, (SELECT ID from skills WHERE skill="Interpersonal Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (24, 2, (SELECT ID from skills WHERE skill="Communication Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (24, 2, (SELECT ID from skills WHERE skill="Differential Diagnosis"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (24, 2, (SELECT ID from skills WHERE skill="Analytical Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (24, 2, (SELECT ID from skills WHERE skill="Patient Care"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (24, 2, (SELECT ID from skills WHERE skill="Risk Management Consulting"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (25, 1, (SELECT ID from skills WHERE skill="Customer Service"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (25, 1, (SELECT ID from skills WHERE skill="Technical Skillset"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (25, 1, (SELECT ID from skills WHERE skill="Computer Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (25, 1, (SELECT ID from skills WHERE skill="Computer Hardware Troubleshooting"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (26, 3, (SELECT ID from skills WHERE skill="Written Communication"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (26, 3, (SELECT ID from skills WHERE skill="Oral Communication"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (26, 3, (SELECT ID from skills WHERE skill="Workplace Organization"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (26, 3, (SELECT ID from skills WHERE skill="Market Knowledge"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (26, 3, (SELECT ID from skills WHERE skill="Business Knowledge"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (26, 3, (SELECT ID from skills WHERE skill="Digital Networking"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (26, 3, (SELECT ID from skills WHERE skill="Business Networking"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (26, 3, (SELECT ID from skills WHERE skill="Copy Editing"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (27, 3, (SELECT ID from skills WHERE skill="Qualified Teacher"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (27, 3, (SELECT ID from skills WHERE skill="Communication Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (27, 3, (SELECT ID from skills WHERE skill="Conflict Resolution"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (27, 3, (SELECT ID from skills WHERE skill="Critical Thinking"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (27, 3, (SELECT ID from skills WHERE skill="Time Management"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (27, 3, (SELECT ID from skills WHERE skill="Technological Proficiency"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (28, 2, (SELECT ID from skills WHERE skill="Interpersonal Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (28, 2, (SELECT ID from skills WHERE skill="Scripting Languages"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (28, 2, (SELECT ID from skills WHERE skill="Networking Training"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (28, 2, (SELECT ID from skills WHERE skill="Troubleshooting"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (28, 2, (SELECT ID from skills WHERE skill="Problem Solving"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (28, 2, (SELECT ID from skills WHERE skill="Critical Thinking"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (28, 2, (SELECT ID from skills WHERE skill="Security"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (28, 2, (SELECT ID from skills WHERE skill="HTML"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (28, 2, (SELECT ID from skills WHERE skill="Javascript"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (28, 2, (SELECT ID from skills WHERE skill="Windows"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (29, 5, (SELECT ID from skills WHERE skill="Qualitative & Quantitative Research Methodologies"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (29, 5, (SELECT ID from skills WHERE skill="HR Administration"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (29, 5, (SELECT ID from skills WHERE skill="Written Communication"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (29, 5, (SELECT ID from skills WHERE skill="Oral Communication"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (29, 5, (SELECT ID from skills WHERE skill="Microsoft Office"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (30, 1, (SELECT ID from skills WHERE skill="Interpersonal Skills"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (30, 1, (SELECT ID from skills WHERE skill="Mathematics Education"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (30, 1, (SELECT ID from skills WHERE skill="Science Education"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (30, 1, (SELECT ID from skills WHERE skill="Handle Confidential Information"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (30, 1, (SELECT ID from skills WHERE skill="Healthcare Analytics"));
INSERT INTO requires (job_listingID, exp_years, skill_ID) VALUES (30, 1, (SELECT ID from skills WHERE skill="Computer Skills"));
