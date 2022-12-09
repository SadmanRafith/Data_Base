--------------------------------------------------------------------------------
/*
    SELECT <col name>, <col name> 
    FROM <table name> 
    WHERE <col name> IN (10,30) ORDER BY <col name> ASC / DESC
*/
--------------------------------------------------------------------------------

SELECT FIRST_NAME, DEPARTMENT_ID 
FROM EMPLOYEES 
WHERE DEPARTMENT_ID IN (10,30) ORDER BY FIRST_NAME ASC


SELECT FIRST_NAME, SALARY, COMMISSION_PCT 
FROM EMPLOYEES 
WHERE COMMISSION_PCT IS NOT NULL ORDER BY SALARY DESC