DROP TABLE IF EXISTS jobtype;

CREATE TABLE jobtype (
  ID INTEGER PRIMARY KEY AUTO_INCREMENT,
  type CHAR(20) NOT NULL
);

INSERT INTO jobtype (type) VALUES ("Full-Time");
INSERT INTO jobtype (type) VALUES ("Part-Time");
INSERT INTO jobtype (type) VALUES ("Internship");
Insert INTO jobtype (type) VALUES ("Paid Internship");
INSERT INTO jobtype (type) VALUES ("Temporary");