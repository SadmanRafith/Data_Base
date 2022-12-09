

/*Lab Task - 2
------------------------



Questions
--------------------------------------------------------------------------------------------------------
1. Create a query to display the name(first and last) and salary concatenated in such a way that data shows like the below pattern: "Steven king gets salary $24000"
2. Create a query to display the employee name and department number for employee number 127.
3. Display the employee name, job, and hire date of employees hired between February 20, 1981, and May 1, 1981. Order the query in ascending order by hire date.
4. Display the employee name and department number of all employees in departments 10 and 30 in alphabetical order by name.
5. Display the name and hire date of every employee who was hired in 1982.
6. Display the name and job title of all employees who do not have a manager.
7. Display the name, salary, and commission for all employees who earn commissions. Sort data in descending order of salary.
8. Display the names of all employees where the third letter of their name is an e and first letter is S.
9. Display the name of all employees who have two Ls in their name.
10.Find out the salary of all employees excluding who works in department 90.







Answers
---------------------------------------------------------------------------------------------------------*/
SELECT * FROM EMPLOYEES

1. SELECT FIRST_NAME||' '||LAST_NAME, SALARY FROM EMPLOYEES

2. SELECT FIRST_NAME, DEPARTMENT_ID FROM EMPLOYEES WHERE EMPLOYEE_ID = 127

3. SELECT FIRST_NAME, JOB_ID, HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE BETWEEN '20-FEB-1981' AND '01-MAY-1981' ORDER BY HIRE_DATE ASC

4. SELECT FIRST_NAME, DEPARTMENT_ID FROM EMPLOYEES WHERE DEPARTMENT_ID IN (10,30) ORDER BY FIRST_NAME ASC

5. SELECT FIRST_NAME, HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE BETWEEN '01-JAN-1982' AND '31-DEC-1982'

6. SELECT FIRST_NAME, JOB_ID FROM EMPLOYEES WHERE MANAGER_ID IS NULL

7. SELECT FIRST_NAME, SALARY, COMMISSION_PCT FROM EMPLOYEES WHERE COMMISSION_PCT IS NOT NULL ORDER BY SALARY DESC

8. SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE 'S_e%'

9. SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '%l%l%'

10. SELECT SALARY FROM EMPLOYEES WHERE DEPARTMENT_ID<>90

