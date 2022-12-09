/*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

Lab Performance - 01
----------------------------------------

Questions
---------------------------------------------------------------------------------------------------------------
1.Create a query to display the first name and salary of employees earning more than $7000.
2.Create a query to display the employee first name and department number for employee number 107.
3.Display the employee name, job, and start date of employees hired between February 20, 1981, and May 1, 1981.
4.Display the employee name and department number of all employees in departments 10 and 30.
5.Display the first name and hire date of every employee who was hired in 1982.
6.Display the first name and job id of all employees who do not have a manager.
7.Display the first name, salary, and commission for all employees who earn commissions. 
8.Write a query to display the manager id, department number, and job id for all employees.
9.Find out the employees first name and salary who earns more than 15000.
10.Find out the country id and country name of the employees.


Answers
---------------------------------------------------------------------------------------------------------------------------------------*/
1. SELECT FIRST_NAME, SALARY FROM EMPLOYEES WHERE SALARY > 7000

2. SELECT FIRST_NAME, DEPARTMENT_ID FROM EMPLOYEES WHERE EMPLOYEE_ID = 107

3. SELECT FIRST_NAME||' '||LAST_NAME, JOB_ID, HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE > '20-FEB-81' AND HIRE_DATE < '01-MAY-81'

4. SELECT FIRST_NAME||' '||LAST_NAME, DEPARTMENT_ID FROM EMPLOYEES WHERE DEPARTMENT_ID = 10 OR DEPARTMENT_ID = 30

5. SELECT FIRST_NAME, HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE > '01-JAN-82' AND HIRE_DATE < '31-DEC-82'

6. SELECT FIRST_NAME, JOB_ID FROM EMPLOYEES WHERE MANAGER_ID IS NULL

7. SELECT FIRST_NAME, COMMISSION_PCT FROM EMPLOYEES WHERE COMMISSION_PCT IS NOT NULL

8. SELECT MANAGER_ID, DEPARTMENT_ID, JOB_ID FROM EMPLOYEES

9. SELECT FIRST_NAME, SALARY FROM EMPLOYEES WHERE SALARY > 15000

10. SELECT COUNTRY_ID, COUNTRY_NAME FROM COUNTRIES




