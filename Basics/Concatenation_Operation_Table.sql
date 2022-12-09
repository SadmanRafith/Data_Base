
SELECT *
FROM EMPLOYEES

--------------------------------------------------------------------------------
/*
    -> Concatenates columns or character strings to other columns 
    -> Is represented by two vertical bars (||)
    -> Creates a resultant column that is a character expression
    -> Can only be used after, before any column name

    -> A literal is a character, expression, or number included in the SELECT list.
    -> Date and character literal values must be enclosed within single quotation marks.
    -> Each character string is output once for each row returned
*/
--------------------------------------------------------------------------------


SELECT FIRST_NAME||' '||LAST_NAME
FROM EMPLOYEES


SELECT FIRST_NAME||' '||' is a '||' '||LAST_NAME
FROM EMPLOYEES