-- NAME: Md.Tahsin Hasib
-- ID  : 22-46026-1


/*
* Subquery from scott user:

1.	Display the employee names who joined after KING.
2.	Display the employee names that earn a salary that is higher than the salary of all CLERKS. 
3.	Display the employee names that earn a salary that is higher than the salary of any CLERKS. 
4.	Display the employee names who get the department wise highest amount of salary.
5.	Display the employee names who earn more than employee SMITH.

* Joining for user scott

1.	Display the name of all the employees who work in DALLAS.
2.	Display the name of all the employees who joined before their manager.
3.	Display the name of all the employees and their respective manager. If an employee does not have a manger display ‘NO MANAGER’.
4.	Display the salary grades of each employee.
5.	Write a query to display the name, department number, and department name for
all employees.

* Joining for user scott

1)	Display all the managers & clerks who work in Accounts and Marketing departments.
2)	Display all the salesmen who are not located at DALLAS.
3)	Select department name & location of all the employees working for CLARK.
4)	Select all the departmental information for all the managers
5)	Select all the employees who work in DALLAS.
6)	Delete the records from the DEPT table that don’t have matching records in EMP
7)	Get all the employees who work in the same departments as of SCOTT
8)	Display all the employees who have joined before their managers.
9)	List all the employees who are earning more than their managers.
10)	Fetch all the employees who are earning same salaries.
11)	Select all the employees who are earning same as SMITH.
12)	 Display the employee’s details and their salary grades.

*/

---------------------------------------------
-- Subquery from scott user:
-----------------------------

SELECT *
FROM EMP

1.
SELECT ENAME
FROM EMP 
WHERE HIREDATE > (
    SELECT HIREDATE
    FROM EMP
    WHERE ENAME = 'KING'
)


2.
SELECT ENAME, SAL
FROM EMP
WHERE SAL > ALL (
    SELECT SAL
    FROM EMP
    WHERE JOB = 'CLERK'
)


SELECT SAL
FROM EMP
WHERE JOB = 'CLERK'


3.
SELECT ENAME, SAL
FROM EMP
WHERE SAL > ANY (
    SELECT SAL
    FROM EMP
    WHERE JOB = 'CLERK'
)


4.
SELECT ENAME
FROM EMP
WHERE SAL IN (
    SELECT MAX(SAL)
    FROM EMP
    GROUP BY DEPTNO
)



5.
SELECT ENAME, SAL
FROM EMP
WHERE SAL > (
    SELECT SAL
    FROM EMP
    WHERE ENAME = 'SMITH'
)

SELECT ENAME, SAL
FROM EMP
WHERE ENAME = 'SMITH'



------------------------------------------------------
-- Joining for user scott
---------------------------------

