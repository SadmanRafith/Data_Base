
SELECT *
FROM EMPLOYEES

--------------------------------------------------------------------------------
/*
    -> Renames a column heading
    -> Is useful with calculations
    -> Immediately follows column name; optional AS keyword between column name and alias
    -> Requires double quotation marks if it contains spaces or special characters or is case sensitive

*/
--------------------------------------------------------------------------------

SELECT FIRST_NAME AS NAMES
FROM EMPLOYEES


SELECT FIRST_NAME AS "EMPLOYEE NAMES"
FROM EMPLOYEES
