DROP TABLE IF EXISTS includes;

CREATE TABLE includes (
  resumeID INTEGER,
  skill_ID INTEGER,
  exp_years INTEGER(2),
  PRIMARY KEY (resumeID, skill_ID),
  CONSTRAINT `fk_includes_resume` FOREIGN KEY (resumeID) REFERENCES `resume` (ID) ON DELETE CASCADE,
  CONSTRAINT `fk_includes_skills` FOREIGN KEY (skill_ID) REFERENCES `skills` (ID) ON DELETE CASCADE
);