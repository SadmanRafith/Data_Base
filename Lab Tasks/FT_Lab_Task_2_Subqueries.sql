/* MD.TAHSIN HASIB 22-46026-1

1.	Display the first name and salary for all employees who earn more than employee number 103 (Employees table).
2.	Display the department number and department name for all departments whose location number is equal to the location number of department number 90 (Departments table).
3.	Display the last name and hire date for all employees who was hired after employee number 101 (Employees table).
4.	Display the first name, last name, and department number for all employees who work in Sales department (Employees and Departments table).
5.	Display the department number and department name for all departments located in Toronto (Departments table).
6.	Display the first name, salary and department number for all employees who work in the department as employee number 124 (Employees table).
7.	Display the first name, salary, and department number for all employees who earn more than the average salary (Employees table).
8.	Display the first name, salary, and department number for all employees whose salary equals one of the salaries in department number 20 (Employees table).
9.	Display the first name, salary, and department number for all employees who earn more than maximum salary in department number 50 (Employees table).
10.	Display the first name, salary, and department number for all employees who earn more than the minimum salary in department number 60 (Employees table).
11.	Display the first name, salary, and department number for all employees who earn less than the minimum salary of department number 90 (Employees table).
12.	Display the first name, salary and department number for all employees whose department is located Seattle (Employees, Departments and Locations table).
13.	Display the first name, salary, and department number for all employees who earn less than the average salary, and also work at the same department as employee whose first name is Kevin

*/

Answers
---------------------------------------------------

1.
SELECT FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY > ANY (
    SELECT SALARY
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID = 103
)

SELECT DEPARTMENT_ID, DEPARTMENT_NAME


2.
SELECT DEPARTMENT_ID, DEPARTMENT_NAME
FROM DEPARTMENTS
WHERE LOCATION_ID IN (
    SELECT LOCATION_ID
    FROM DEPARTMENTS
    WHERE DEPARTMENT_ID = 90
) 


3.
SELECT LAST_NAME, HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE > (
    SELECT HIRE_DATE
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID = 101
)


4.
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_ID
FROM EMPLOYEES 
WHERE DEPARTMENT_ID IN (
    SELECT DEPARTMENT_ID
    FROM DEPARTMENTS
    WHERE DEPARTMENT_NAME = 'Sales'
)


5.
SELECT DEPARTMENT_ID, DEPARTMENT_NAME
FROM DEPARTMENTS
WHERE LOCATION_ID IN (
    SELECT LOCATION_ID
    FROM LOCATIONS
    WHERE CITY = 'Toronto'
)


6.
SELECT FIRST_NAME,  
        SALARY,
        DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID IN (
    SELECT DEPARTMENT_ID
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID = 124
)


7.
SELECT FIRST_NAME, SALARY, DEPARTMENT_ID
FROM EMPLOYEES
WHERE SALARY > (
    SELECT AVG(SALARY)
    FROM EMPLOYEES
)


8.
SELECT FIRST_NAME, SALARY, DEPARTMENT_ID
FROM EMPLOYEES 
WHERE SALARY IN (
    SELECT SALARY
    FROM EMPLOYEES
    WHERE DEPARTMENT_ID = 20
)


9.
SELECT FIRST_NAME, SALARY, DEPARTMENT_ID
FROM EMPLOYEES
WHERE SALARY > (
    SELECT MAX(SALARY)
    FROM EMPLOYEES
    WHERE DEPARTMENT_ID = 50
)


10.
SELECT FIRST_NAME, SALARY, DEPARTMENT_ID
FROM EMPLOYEES
WHERE SALARY > (
    SELECT MIN(SALARY)
    FROM EMPLOYEES
    WHERE DEPARTMENT_ID = 60
)


11.
SELECT FIRST_NAME, SALARY, DEPARTMENT_ID
FROM EMPLOYEES
WHERE SALARY < (
    SELECT MIN(SALARY)
    FROM EMPLOYEES
    WHERE DEPARTMENT_ID = 90
)


12.
select first_name,
       salary,
       department_id
from employees
where department_id in(
    select department_id
    from departments
    where location_id in(
        select location_id
        from locations
        where city = 'Seattle'
  )
)


13.
SELECT FIRST_NAME, SALARY, DEPARTMENT_ID
FROM EMPLOYEES
WHERE SALARY < (
    SELECT AVG(SALARY)
    FROM EMPLOYEES
    WHERE DEPARTMENT_ID IN (
        SELECT DEPARTMENT_ID
        FROM EMPLOYEES
        WHERE FIRST_NAME = 'Kevin'
    )
)


