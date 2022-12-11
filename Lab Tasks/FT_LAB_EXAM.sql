	
    
  /*  
    Display all the departmental information for all the existing employees and if a department has no employees display it as “No employees”.
	Create a view called SAL_VU based on the employee name, department name, salary, and salary grade for all employees. Label the columns Employee, Department, Salary, and Grade, respectively.
	Create a sequence to be used with the primary key column of the DEPARTMENT table. The sequence should start at 60 and have a maximum value of 100. Have your sequence increment by ten numbers. Name the sequence DEPT_ID_SEQ.
	Display the second maximum salary from Scott Schema.
	Display all the employees who are getting more than the average salaries of all the employees.
	Select department name & location of all the employees working for CLARK.
	Write a script to display the following information about your sequences: sequence name, maximum value, increment size, and last number.
	Select department name & location of all the employees working for CLARK.
	Create a view named DEPT10 that contains the employee number, employee name, and department number for all employees in department 10. Label the view column EMPLOYEE_ID, EMPLOYEE, and DEPARTMENT_ID. Do not allow an employee to be reassigned to another department through the view.*/


1.	SELECT NVL2(ENAME,DNAME,'NO EMPLOYEE'),DNAME
FROM EMP,DEPT
WHERE EMP.DEPTNO(+)=DEPT.DEPTNO

2.	CREATE OR REPLACE VIEW SAL_VU
AS
SELECT e.ENAME "Employee", d.DNAME "Department", e.sal "Salary",j.grade "Grades"
FROM emp e,dept d, salgrade j
WHERE e.deptno = d.deptno
AND e.sal BETWEEN j.losal and j.hisal

3.	CREATE SEQUENCE dept_id_seq
START WITH 60
MAXVALUE 100

4. SELECT *
FROM EMP
WHERE SAL=(SELECT MAX(SAL) FROM EMP)

5. SELECT *
FROM EMP
WHERE SAL>(SELECT AVG(SAL) FROM EMP)

6. SELECT DNAME,LOC 
FROM EMP,DEPT 
WHERE EMP.DEPTNO=DEPT.DEPTNO 
AND MGR=(SELECT EMPNO FROM EMP WHERE ENAME='CLARK')


7. SELECT	SEQUENCE_NAME, MIN_VALUE, MAX_VALUE, LAST_NUMBER
FROM	USER_SEQUENCES

8. SELECT DNAME,LOC 
FROM EMP,DEPT 
WHERE EMP.DEPTNO=DEPT.DEPTNO 
AND MGR=(SELECT EMPNO FROM EMP WHERE ENAME='CLARK')

9. create or replace view dept10
AS
select empno as employee_id, ename as employee, deptno as dept_id
from emp
where deptno=10
with check option constraint emp_dept_10




