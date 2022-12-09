
/*  MD. TAHSIN HASIB 22-46026-1

    FT Lab Task - 1

1.  ________________________________________________________
    Column Name               |          	Data Type
    ________________________________________________________
    s_id	                  |              Number
    s_name	                  |              Varchar2(20)
    phone	                  |              number
    address	                  |              Varchar2(50)
    email	                  |              Varchar2(30)
    credit_completed	      |              Number(3)
    course_completed	      |              Number(2)
    cgpa	                  |              Number
    deptno	                  |              number(5)
    gender	                  |              Varchar2(6)

    Create above table according to given data types.

    2. Set s_id as primary key of the table.
    3. Set constraint not null on the column s_name.
    4. Make email unique.
    5. Make deptno as foreign key taking reference from department table which you have made in previous lab.
    6. Add a constraint to gender so that it only allows the value ‘M’ and ‘F’.
    7. Disable the constraint of s_id.
    8. Drop the constraint from gender.
    9. Enable the constraint of s_id.

*/

-- Answers
------------------------------------------------------------------

1.
CREATE TABLE AIUB (
    S_ID NUMBER,
    S_NAME VARCHAR2(20),
    PHONE NUMBER,
    ADDRESS VARCHAR2(50),
    EMAIL VARCHAR2(30),
    CREDIT_COMPLETED NUMBER(3),
    COURSE_COMPLETED NUMBER(2),
    CGPA NUMBER,
    DEPTNO NUMBER(5),
    GENDER VARCHAR2(6)
);

DESC AIUB
------------------------------------------------------------------

2.
ALTER TABLE AIUB
ADD CONSTRAINT AIUB_S_ID_PK PRIMARY KEY(S_ID)   
------------------------------------------------------------------

3.    
ALTER TABLE AIUB
MODIFY S_NAME VARCHAR2(20) NOT NULL
------------------------------------------------------------------

4.
ALTER TABLE AIUB
ADD CONSTRAINT AIUB_UNIQUE_EMAIL UNIQUE(EMAIL)
------------------------------------------------------------------

5.
CREATE TABLE DEPARTMENT (
    DEPTNO NUMBER(5) CONSTRAINT DEPARTMENT_DEPTNO_PK PRIMARY KEY
);


ALTER TABLE AIUB
ADD CONSTRAINT DEPARTMENT_DEPTNO_FK FOREIGN KEY(DEPTNO) 
REFERENCES DEPARTMENT(DEPTNO) 

DESC DEPARTMENT
------------------------------------------------------------------

6.
ALTER TABLE AIUB
ADD CONSTRAINT AIUB_GENDER 
CHECK(GENDER IN('M', 'F'))
------------------------------------------------------------------
7.
ALTER TABLE AIUB 
DISABLE CONSTRAINT AIUB_S_ID_PK
------------------------------------------------------------------
8.
ALTER TABLE AIUB 
DROP CONSTRAINT AIUB_GENDER
------------------------------------------------------------------
9.
ALTER TABLE AIUB
ENABLE CONSTRAINT AIUB_S_ID_PK
------------------------------------------------------------------






