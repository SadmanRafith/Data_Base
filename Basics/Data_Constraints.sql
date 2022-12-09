

CREATE TABLE STUDENT(
    SID NUMBER(5),
    SNAME VARCHAR2(50)
);

DESC STUDENT

INSERT INTO STUDENT(SNAME) VALUES('Alex');      -- will work

DROP TABLE STUDENT


---------------------------------------------------------------------------------
/*
    NOT NULL means that particular column value cannot be empty

    ie. not nullable

    <col> <datatype>(size) NOT NULL
*/
---------------------------------------------------------------------------------


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
/*
    DEFAULT <value> means that particular column value will be the exact value
    by default that we are going to assign if no value is inserted.

    ie. default


    <col_name> <data type> (size) DEFAULT (default_value)

*/
---------------------------------------------------------------------------------


CREATE TABLE STUDENT(
    SID NUMBER(5) DEFAULT 0,
    SNAME VARCHAR2(50)
);


INSERT INTO STUDENT(SNAME) VALUES('Alex');      

SELECT *
FROM STUDENT

DROP TABLE STUDENT


---------------------------------------------------------------------------------
/*
    UNIQUE means that particular column will take unique value
    each time a row is going to be inserted.

    <col> <datatype>(size) UNIQUE

*/
---------------------------------------------------------------------------------

CREATE TABLE STUDENT(
    SID NUMBER(5) UNIQUE,
    SNAME VARCHAR2(50)
);


INSERT INTO STUDENT(SNAME) VALUES('Alex');      

SELECT *
FROM STUDENT

DROP TABLE STUDENT



