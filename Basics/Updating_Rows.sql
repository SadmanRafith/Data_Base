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
INSERT INTO AIUB VALUES (2, 5500.00, 'DATA STRUCTURE', 'BRANDON')
INSERT INTO AIUB VALUES (3, 3500.00, 'ELECRTRICAL CIRCUITS', 'RYZEN')
INSERT INTO AIUB VALUES (4, 7500.00, 'ELECTRONIC DEVICES', 'INTEL')

-------------------------------------------------------------------------------
/*
    UPDATE <table name>
    SET <col name> = <example>

    -> when updating only one column



    UPDATE <table name> 
    SET <col name> = <value>,
        <col name> = <value>,
        <col name> = <value>,
        ....................,

    -> when updating multiple values



    UPDATE <table name>
    SET <col name> = <value>
    WHERE <condition>

    -> when updating specific column data value
*/
-------------------------------------------------------------------------------


UPDATE AIUB
SET COURSE = 'VALORANT'



UPDATE AIUB 
SET COURSE = 'VALORANT',
    TUTION = 200.00,
    INSTRUCTOR = 'RIOT'



UPDATE AIUB
SET COURSE = 'APEX LEGENDS'
WHERE ID = 1



