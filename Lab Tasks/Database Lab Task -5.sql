
/*LAB TASK - 5
----------------------------------------------

1. Write a query to list the number of jobs available in the employees table.
2. Write a query to get the total salaries payable to employees
3. Write a query to get the minimum salary from employees table.
4. Write a query to get the maximum salary of an employee working as a IT Programmer.
5. Write a query to get the average salary and number of employees working the department 90.
6. Write a query to get the highest, lowest, sum, and average salary of all employees
7. Write a query to get the number of employees with the same job.
8. Write a query to get the difference between the highest and lowest salaries
9. Write a query to find the manager ID and the salary of the lowest-paid employee for that manager
10. Write a query to get the department ID and the total salary payable in each department.
11. Write a query to get the average salary for all departments employing more than 10 employees
12. Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000.


ANSWERS
---------------------------*/
1.
SELECT COUNT (DISTINCT JOB_ID)
FROM EMPLOYEES

2.
SELECT SUM (SALARY)
FROM EMPLOYEES

3.
SELECT MIN (SALARY)
FROM EMPLOYEES

4.
SELECT MIN (SALARY)
FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG' 

5.
SELECT AVG (SALARY), COUNT (EMPLOYEE_ID)
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 90

*** COUNT (*) is an alternative of count

6.
SELECT MAX (SALARY), MIN (SALARY), SUM (SALARY), AVG (SALARY)
FROM EMPLOYEES 

7.
SELECT JOB_ID, COUNT (EMPLOYEE_ID)
FROM EMPLOYEES
GROUP BY JOB_ID

8.
SELECT MAX (SALARY) - MIN (SALARY) AS DIFFERENCE
FROM EMPLOYEES

9.
SELECT MANAGER_ID, MIN (SALARY)
FROM EMPLOYEES WHERE MANAGER_ID IS NOT NULL
GROUP BY MANAGER_ID

10.
SELECT DEPARTMENT_ID, SUM (SALARY)
FROM EMPLOYEES WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY DEPARTMENT_ID

11.
SELECT DEPARTMENT_ID, AVG (SALARY), COUNT(*) 
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING COUNT (*) > 10

12.
SELECT JOB_ID, MAX (SALARY) 
FROM EMPLOYEES
GROUP BY JOB_ID
HAVING MAX (SALARY) >= 4000
