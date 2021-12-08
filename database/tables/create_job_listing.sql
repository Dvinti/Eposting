DROP TABLE IF EXISTS job_listing;

CREATE TABLE job_listing (
  ID INTEGER PRIMARY KEY AUTO_INCREMENT,
  employerUserID INTEGER,
  name VARCHAR(40) NOT NULL,
  jobtypeID INT(1) NOT NULL,
  description TEXT,
  CONSTRAINT `fk_joblisting_employer` FOREIGN KEY (employerUserID) REFERENCES `employer` (UserID) ON DELETE CASCADE,
  CONSTRAINT `fk_joblisting_jobtype` FOREIGN KEY (jobtypeID) REFERENCES `jobtype` (ID) ON DELETE CASCADE
);

insert into job_listing (employerUserID, name, jobtypeID, description) values (24, 'Chief Design Engineer', 3, 'Etiam pretium iaculis justo.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (21, 'Quality Engineer', 5, 'Nullam porttitor lacus at turpis.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (24, 'Compensation Analyst', 5, 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (4, 'Human Resources Assistant IV', 5, 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (25, 'Staff Accountant IV', 4, 'Maecenas tincidunt lacus at velit.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (10, 'Account Coordinator', 4, 'Vestibulum ac est lacinia nisi venenatis tristique.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (29, 'Staff Scientist', 5, 'Fusce posuere felis sed lacus.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (29, 'Actuary', 4, 'Quisque id justo sit amet sapien dignissim vestibulum.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (7, 'Senior Editor', 1, 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (7, 'Payment Adjustment Coordinator', 1, 'Nam dui.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (20, 'Analog Circuit Design manager', 2, 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (11, 'Professor', 1, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (5, 'Nurse Practicioner', 4, 'Mauris sit amet eros.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (3, 'Geological Engineer', 4, 'Duis bibendum.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (3, 'Director of Sales', 1, 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (20, 'Account Executive', 2, 'Mauris lacinia sapien quis libero.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (24, 'Project Manager', 2, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (9, 'Environmental Tech', 2, 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (14, 'Software Engineer IV', 3, 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (1, 'Design Engineer', 3, 'Aliquam non mauris.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (16, 'Dental Hygienist', 1, 'Integer tincidunt ante vel ipsum.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (5, 'Operator', 2, 'Mauris sit amet eros.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (15, 'Database Administrator I', 5, 'Quisque id justo sit amet sapien dignissim vestibulum.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (21, 'Nurse Practicioner', 4, 'Duis bibendum.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (4, 'Desktop Support Technician', 5, 'Nulla tellus.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (6, 'Marketing Assistant', 5, 'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (17, 'Teacher', 2, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (29, 'Systems Administrator II', 5, 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (27, 'Compensation Analyst', 5, 'Nulla tellus.');
insert into job_listing (employerUserID, name, jobtypeID, description) values (21, 'Pharmacist', 5, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae.');