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


INSERT INTO AIUB VALUES (1, 3500.00, 'DATABASE', 'STEVEN');
INSERT INTO AIUB VALUES (2, 3500.00, 'DATA STRUCTURE', 'BRANDON');
INSERT INTO AIUB VALUES (3, 3500.00, 'ELECRTRICAL CIRCUITS', 'RYZEN');
INSERT INTO AIUB VALUES (4, 3500.00, 'ELECTRONIC DEVICES', 'INTEL');


ALTER TABLE AIUB ADD (
   PHONE NUMBER (12)
);

ALTER TABLE AIUB 
DROP COLUMN PHONE

-------------------------------------------------------------------------------
/*
    ALTER TABLE <table name> MODIFY (
        <col name> <type> (size)
    )

    
    -> only one column can be modified at a time.
    -> the column must be empty otherwise the action is not possible
*/


-------------------------------------------------------------------------------

ALTER TABLE AIUB MODIFY ( 
   PHONE VARCHAR2 (12)
);


INSERT INTO AIUB 
VALUES (8, 3500.00, 'BOBO', 'RUSH B', 'AVERAGE', 017111111111);

   



