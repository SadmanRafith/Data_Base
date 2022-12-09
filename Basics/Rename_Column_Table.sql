CREATE TABLE AIUB (
   ID NUMBER (8) CONSTRAINT ID_PK PRIMARY KEY,
   TUTION DECIMAL (6,2), 
   COURSE VARCHAR2 (255),
   INSTRUCTOR VARCHAR2 (255)
);

DESC AIUB

DROP TABLE AIUB

SELECT *
FROM AIUB

INSERT INTO AIUB VALUES (1, 3500.00, 'DATABASE', 'STEVEN')
INSERT INTO AIUB VALUES (2, 3500.00, 'DATA STRUCTURE', 'BRANDON')
INSERT INTO AIUB VALUES (3, 3500.00, 'ELECRTRICAL CIRCUITS', 'RYZEN')
INSERT INTO AIUB VALUES (4, 3500.00, 'ELECTRONIC DEVICES', 'INTEL')

-------------------------------------------------------------------------------
/*
    ALTER TABLE <table name>
    RENAME COLUMN <col name> TO <new col name>


    -> at a time one action is possible
*/

-------------------------------------------------------------------------------

ALTER TABLE AIUB
RENAME COLUMN COURSES TO SUBJECTS


