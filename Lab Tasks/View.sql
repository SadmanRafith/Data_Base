/*1.	Create a view called EMP_VU based on the employee number, employee name, and department number from the EMP table. Change the heading for the employee name to EMPLOYEE.
Ans:*/ CREATE VIEW EMP_VU
         AS select EMPNO, ENAME EMPLOYEE, DEPTNO
         from EMP 

/*2.	Display the contents of the EMP_VU view. EMPNO	EMPLOYEE	DEPTNO

7839	KING		10
7698	BLAKE		30
7782	CLARK		10
7566	JONES		20
7654	MARTIN		30
7499	ALLEN		30
7844	TURNER		30
7900	JAMES		30
7521	WARD		30
7902	FORD		20
7369	SMITH		20
7788	SCOTT		20
7876	ADAMS	20	
7934	MILLER		10

Ans:*/SELECT EMPNO,EMPLOYEE, DEPTNO
FROM EMP_VU
/*3.	using your view EMP_VU, enter a query to display all employee names and department numbers.

EMPLOYEE	DEPTNO
KING	10
BLAKE	30
CLARK	10
JONES	20
MARTIN	30


   Ans:*/ SELECT EMPLOYEE, DEPTNO
           FROM EMP_VU
	 

/*4.	Create a view named DEPT20 that contains the employee number, employee name, and department number for all employees in department 20. Label the view column EMPLOYEE_ID, EMPLOYEE, and DEPARTMENT_ID. Do not allow an employee to be reassigned to another department through the view.

Ans:*/ CREATE VIEW DEPT20 
AS SELECT EMPNO EMPLOYEE_ID, ENAME EMPLOYEE, DEPTNO DEPARTMENT_ID
FROM EMP
WHERE DEPTNO=20
WITH CHECK OPTION CONSTRAINT emp_vu_20

/*5.	Create a view called SALARY_VU based on the employee name, department name, salary, and salary grade for all employees. Label the columns Employee, Department, Salary, and Grade, respectively.
Ans:*/ CREATE VIEW SALARY_VU 
	AS SELECT e.ename EMPLOYEE, e.deptno DEPARTMENT, e.sal SALARY, s.grade GRADE
	From emp e,salgrade s
	WHERE e.sal
BETWEEN s.losal AND s.hisal



