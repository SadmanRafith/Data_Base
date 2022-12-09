

---------------------------------------------------------------------------
/*
    Constraints are the rules enforced on data columns on table. 
    These are used to limit the type of data  that can go into a table. 
    This ensures the accuracy and reliability of the data in the database.

    * For default constraint:

    ALTER TABLE <table name>
    ADD <colname> <datatype>(<size>) DEFAULT <default_value>

    *** For primary key constraint:

    ALTER TABLE <table name>
    ADD CONSTRAINT <constraint name>
    PRIMARY KEY (<column name>)
    ------------------------------------------------------------
    
    *** For Foreign key constraint:
    
    ALTER TABLE <current table>
    ADD CONSTRAINT <con name> 
    FOREIGN KEY(col name) 
    REFERENCES <parent table>(parent col)
    ------------------------------------------------------------

    * For check constraint:

    ALTER TABLE <table_name>
    ADD CONSTRAINT <constraintname>
    CHECK ( <colname> <expression>)
    ------------------------------------------------------------

    * DROP, DISABLE, ENABLE

    ALTER TABLE <table> DROP CONSTRAINT <constraint_name>

    ALTER TABLE <table> DISABLE CONSTRAINT <constraint_name>

    ALTER TABLE <table> ENABLE CONSTRAINT <constraint_name>
    ------------------------------------------------------------



*/
---------------------------------------------------------------------------------

CREATE TABLE STUDENT(
    SID NUMBER(10),
    SNAME VARCHAR2(50),
    SDEPT VARCHAR2(50)
);

DESC STUDENT


CREATE TABLE DEPT(
    DID NUMBER(10),
    DNAME VARCHAR2(50)
);

-- manually adding constraints

ALTER TABLE STUDENT 
ADD CONSTRAINT STUDENT_SID_PK PRIMARY KEY(SID)                     -- student table primary key

ALTER TABLE DEPT
ADD CONSTRAINT DEPT_DID_PK PRIMARY KEY(DID)                        -- dept table primary key

ALTER TABLE DEPT 
ADD CONSTRAINT DEPT_DID_FK FOREIGN KEY(DID) 
REFERENCES STUDENT(SID)                                            -- dept table foreign key


---------------------------------------------------------------------------------------------
ALTER TABLE STUDENT 
ADD CONSTRAINT STUDENT_SID_VERIFIER
CHECK(SID<5)

INSERT INTO STUDENT VALUES(1, 'TAHSIN', 'CSE')                  -- eligible
INSERT INTO STUDENT VALUES(5, 'DISHA', 'CHEM')                  -- violation of constraint
---------------------------------------------------------------------------------------------

/*
    note : the drop constraint cannot be used to remove the constraints of a
    parent table if another table has a foreign key associated with the column
    of parent table's. In that case we must drop the constraint of that child
    table first then the parent table
*/

ALTER TABLE STUDENT
DROP CONSTRAINT STUDENT_SID_PK


ALTER TABLE DEPT
DROP CONSTRAINT DEPT_DID_FK


ALTER TABLE STUDENT DISABLE CONSTRAINT STUDENT_SID_PK

INSERT INTO STUDENT VALUES(1, 'UWU', 'CSE')
INSERT INTO STUDENT VALUES(1, 'ARA ARA', 'CHEM')

ALTER TABLE STUDENT ENABLE CONSTRAINT STUDENT_SID_PK


