
SELECT *
FROM EMPLOYEES
--------------------------------------------------------------------------------
/*
    = equal to
    > greater than
    < less than
    <= less than equal
    >= greater than equal
    <> not equal


    BETWEEN AND OR         -> between two values
    IN(...)                -> match any of a list of values
    LIKE                   -> match a character pattern
    IS NULL                -> is a null value

    
    The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.
    The BETWEEN operator is inclusive: begin and end values are included. 

    The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
    There are two wildcards often used in conjunction with the LIKE operator:
    The percent sign (%) represents zero, one, or multiple characters
    The underscore sign (_) represents one, single character

    The IN operator allows you to specify multiple values in a WHERE clause.
    The IN operator is a shorthand for multiple OR conditions.
*/
--------------------------------------------------------------------------------

SELECT *
FROM EMPLOYEES
WHERE SALARY = 24000


SELECT *
FROM EMPLOYEES
WHERE SALARY > 24000


SELECT *
FROM EMPLOYEES
WHERE SALARY < 24000


SELECT *
FROM EMPLOYEES
WHERE SALARY <= 24000


SELECT *
FROM EMPLOYEES
WHERE DEPARTMENT_ID <> 30

--------------------------------------------------------------

SELECT FIRST_NAME, HIRE_DATE 
FROM EMPLOYEES 
WHERE HIRE_DATE BETWEEN '01-JAN-1982' AND '31-DEC-1982'


SELECT FIRST_NAME, DEPARTMENT_ID 
FROM EMPLOYEES 
WHERE DEPARTMENT_ID IN (10,30)


SELECT * 
FROM EMPLOYEES 
WHERE FIRST_NAME LIKE 'S%'


SELECT * 
FROM EMPLOYEES 
WHERE FIRST_NAME LIKE '%a%'


SELECT * 
FROM EMPLOYEES 
WHERE FIRST_NAME LIKE '_a%'


SELECT FIRST_NAME 
FROM EMPLOYEES 
WHERE FIRST_NAME LIKE '%l%l%'


SELECT * 
FROM EMPLOYEES 
WHERE FIRST_NAME LIKE '__a%'


SELECT FIRST_NAME, SALARY 
FROM EMPLOYEES 
WHERE SALARY LIKE '____'


SELECT FIRST_NAME, JOB_ID 
FROM EMPLOYEES 
WHERE MANAGER_ID IS NULL

