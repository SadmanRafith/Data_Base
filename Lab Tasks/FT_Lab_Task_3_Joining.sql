
Questions
-------------------
/*
1. Write a query in SQL to display the first name, last name, dpeartment number, and department name for each employee.
2. Write a query in SQL to display the first and last name, department, city and state province for each employee.
3. Write a query in SQL to display first name, last name, salary, and job grade for all employees
4. Write a query in SQL to display first name, last name, department number and department name, for all employees for department 80 or 40.
5. Write a query in SQL to display those employees who contain a letter z to their first name and also display their last name, department, city and state province
6. Write a query in SQL to display all departments including those where does not have any employee
7. Write a query in SQL to display the first and last name and salary for those employees who earn less than the employees earn whose number is 182
8. Write a query in SQL to display the first name of all employees including the first name of their manager.
9. Write a query in SQL to display department name, city, and state province for each department.
10. Write a query in SQL to display first name, last name, department number and name, for all employees who have or have not any department. 
*/

Answers
------------------


1.
SELECT E.FIRST_NAME, 
        E.LAST_NAME, 
        D.DEPARTMENT_ID, 
        D.DEPARTMENT_NAME
FROM EMPLOYEES E, DEPARTMENTS D
WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID 



2.
SELECT E.FIRST_NAME,
        E.LAST_NAME,
        D.DEPARTMENT_NAME,
        L.CITY,
        L.STATE_PROVINCE
FROM EMPLOYEES E, DEPARTMENTS D, LOCATIONS L
WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID AND D.LOCATION_ID = L.LOCATION_ID



3.
SELECT E.FIRST_NAME,
        E.LAST_NAME,
        E.SALARY,
        J.JOB_TITLE
FROM EMPLOYEES E, JOBS J
WHERE E.JOB_ID = J.JOB_ID



4.
SELECT E.FIRST_NAME,
        E.LAST_NAME,
        D.DEPARTMENT_ID,
        D.DEPARTMENT_NAME
FROM EMPLOYEES E, DEPARTMENTS D
WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID AND D.DEPARTMENT_ID IN(80,40)



5.
SELECT E.FIRST_NAME,
        E.LAST_NAME,
        D.DEPARTMENT_NAME,
        L.CITY,
        L.STATE_PROVINCE
FROM EMPLOYEES E, DEPARTMENTS D, LOCATIONS L
WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID AND D.LOCATION_ID = L.LOCATION_ID AND E.FIRST_NAME LIKE = '%z%'



6.
SELECT E.FIRST_NAME,
        E.DEPARTMENT_ID,
        D.DEPARTMENT_NAME
FROM EMPLOYEES E, DEPARTMENTS D
WHERE E.DEPARTMENT_ID (+) = D.DEPARTMENT_ID



7.
SELECT E.FIRST_NAME,
        E.LAST_NAME,
        E.SALARY
FROM EMPLOYEES E
WHERE SALARY < (
        SELECT E.SALARY
        FROM EMPLOYEES E
        WHERE EMPLOYEE_ID = 182
)



8.
SELECT WORKER.FIRST_NAME,
        MANAGER.FIRST_NAME
FROM EMPLOYEES WORKER, EMPLOYEES MANAGER
WHERE WORKER.MANAGER_ID = MANAGER.EMPLOYEE_ID



9.
SELECT D.DEPARTMENT_NAME,
        L.CITY,
        L.STATE_PROVINCE
FROM DEPARTMENTS D, LOCATIONS L
WHERE D.LOCATION_ID = L.LOCATION_ID



10.
SELECT E.FIRST_NAME,
        E.LAST_NAME,
        E.DEPARTMENT_ID,
        D.DEPARTMENT_NAME
FROM EMPLOYEES E, DEPARTMENTS D
WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID (+)
