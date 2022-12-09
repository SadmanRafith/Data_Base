-- Aggregate Functions

SELECT SUM (SALARY)
FROM EMPLOYEES


SELECT MAX (SALARY)
FROM EMPLOYEES


SELECT MIN (SALARY)
FROM EMPLOYEES


SELECT AVG (SALARY)
FROM EMPLOYEES


SELECT JOB_ID, COUNT (EMPLOYEE_ID)
FROM EMPLOYEES
GROUP BY JOB_ID

--------------------------------------------------------
/*
NVL (<col name>, value)

    -> this replaces the null value with appropiate valuses that are passed in it
    0  -> 0
    10 -> 10   
*/

SELECT NVL (COMMISSION_PCT, 0)
FROM EMPLOYEES

SELECT FIRST_NAME, SALARY, COMMISSION_PCT, SALARY+NVL(COMMISSION_PCT,0) AS TOTAL_SALARY 
FROM EMPLOYEES

SELECT NVL (COMMISSION_PCT, 10)
FROM EMPLOYEES
--------------------------------------------------------

SELECT MANAGER_ID, MIN (SALARY)
FROM EMPLOYEES WHERE MANAGER_ID IS NOT NULL
GROUP BY MANAGER_ID

-- HAVING -> used for restricting simillar to WHERE

SELECT DEPARTMENT_ID, MAX (SALARY) 
FROM EMPLOYEES 
HAVING MAX (SALARY) > 10000 
GROUP BY DEPARTMENT_ID
