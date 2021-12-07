DROP TABLE IF EXISTS manages_resume;

CREATE TABLE manages_resume (
  resumeID INTEGER PRIMARY KEY,
  CONSTRAINT `fk_manages_resume` FOREIGN KEY (resumeID) REFERENCES `resume` (ID) ON DELETE CASCADE
);

INSERT INTO manages_resume (resumeID) VALUES (1);