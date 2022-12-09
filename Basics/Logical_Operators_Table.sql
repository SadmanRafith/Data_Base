--------------------------------------------------------------------------------
/*
    AND                 -> returns true if both component conditions are ture
    OR                  -> returns true if either component conditions are true
    NOT                 -> returns true if following conditon is false
*/
--------------------------------------------------------------------------------

SELECT FIRST_NAME, HIRE_DATE 
FROM EMPLOYEES 
WHERE HIRE_DATE > '01-JAN-82' AND HIRE_DATE < '31-DEC-82'


SELECT FIRST_NAME, DEPARTMENT_ID 
FROM EMPLOYEES 
WHERE DEPARTMENT_ID = 10 OR DEPARTMENT_ID = 30


SELECT FIRST_NAME, COMMISSION_PCT 
FROM EMPLOYEES 
WHERE COMMISSION_PCT IS NOT NULL