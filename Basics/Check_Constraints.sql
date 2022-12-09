
/*
   The CHECK constraint is used to limit the
    value range that can be placed in a column. If
    you define a  CHECK constraint  on a single
    column it allows only certain values for this
    column.
*/


CREATE TABLE STUDENT(
    SID NUMBER(5) CONSTRAINT STUDENT_SID_CK CHECK(SID>5) CONSTRAINT STUDENT_SID_PK PRIMARY KEY,
    SNAME VARCHAR2(50)
);


DROP TABLE STUDENT

INSERT INTO STUDENT VALUES(6, 'Tahsin')         -- will work
INSERT INTO STUDENT VALUES(3, 'Disha')          -- won't work


SELECT *
FROM STUDENT
