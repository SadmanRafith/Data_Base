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
    RENAME <table name> TO <new table name>

    
    -> changelogs
    
    select * from <new table>
    desc <new table>
*/

-------------------------------------------------------------------------------

RENAME AIUB TO BRAC

SELECT *
FROM BRAC

DESC BRAC
