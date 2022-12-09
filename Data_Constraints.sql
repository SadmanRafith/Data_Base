
CREATE TABLE STUDENT(
    SID NUMBER(5),
    SNAME VARCHAR2(50)
);

DESC STUDENT

INSERT INTO STUDENT(SNAME) VALUES('Alex');      -- will work

DROP TABLE STUDENT

---------------------------------------------------------------------------------
-- NOT NULL

CREATE TABLE STUDENT(
    SID NUMBER(5) NOT NULL,
    SNAME VARCHAR2(50)
);


DESC STUDENT

INSERT INTO STUDENT(SNAME) VALUES('Alex');      -- won't work

SELECT *
FROM STUDENT

DROP TABLE STUDENT


---------------------------------------------------------------------------------
-- DEFAULT <val>

CREATE TABLE STUDENT(
    SID NUMBER(5) DEFAULT 0,
    SNAME VARCHAR2(50)
);


INSERT INTO STUDENT(SNAME) VALUES('Alex');      

SELECT *
FROM STUDENT

DROP TABLE STUDENT


---------------------------------------------------------------------------------
-- UNIQUE

CREATE TABLE STUDENT(
    SID NUMBER(5) UNIQUE,
    SNAME VARCHAR2(50)
);


INSERT INTO STUDENT(SNAME) VALUES('Alex');      

SELECT *
FROM STUDENT

DROP TABLE STUDENT



