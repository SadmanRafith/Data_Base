
/*Name: Sadman Samir Rafith
ID: 22-46018-1
**************************************************************************************************************

LAB TASK: Sequence*/

/*1. Create a sequence to be used with the primary key column of the DEPARTMENT table. The sequence should start at 60 and have a maximum value of 200. Have your sequence increment by ten numbers. Name the sequence DEPT_ID_SEQ.*/

CREATE SEQUENCE  DEPT_ID_SEQ
	START WITH 60
	INCREMENT BY 10
	MAXVALUE 200

/*2. Write a script to display the following information about your sequences: sequence name, maximum value, increment size, and last number.*/

SELECT SEQUENCE_NAME, MAX_VALUE, INCREMENT_BY, LAST_NUMBER
FROM USER_SEQUENCES

/*3. Write an interactive script to insert a row into the DEPARTMENT table. Be sure to use the sequence that you created for the ID column. Create a customized prompt to enter the department name. Execute your script. Add two departments named Education and Administration. Confirm your additions.*/

INSERT INTO DEPT(DEPTNO, DNAME)
VALUES (DEPT_ID_SEQ.NEXTVAL, 'EDUCATION')
INSERT INTO DEPT(DEPTNO, DNAME)
VALUES (DEPT_ID_SEQ.NEXTVAL, 'ADMINISTRATION')
