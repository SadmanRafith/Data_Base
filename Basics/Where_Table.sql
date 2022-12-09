
SELECT *
FROM EMPLOYEES

--------------------------------------------------------------------------------
/*
    The WHERE clause is used to filter records. It is used to extract only those 
    records that fulfill a specified condition.

    SELECT <col 1>, <col 2>, ...
    FROM <table 1>
    WHERE <condition>;    
*/
--------------------------------------------------------------------------------

SELECT *
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 30
