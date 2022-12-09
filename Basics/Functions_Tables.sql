--------------------------------------------------------------------------------
/* 
    ** Single Row **

    ->  Manipulate data items
    ->  Accept arguments and return one value
    ->  Act on each row returned
    ->  Return one result per row
    ->  May modify the datatype
    ->  Can be nested


    LOWER               -> sql course
    UPPER               -> SQL COURSE
    INITCAP             -> Sql Course

    CONCAT              -> CONCAT('Good', 'String') = GoodString
    SUBSTR              -> SUBSTR('String',1,3) = Str
    LENGTH              -> LENGTH('String') = 6
    INSTR               -> INSTR('String', 'r') = 3
    TRIM                -> Trim(‘S’ from ‘SSMITH’) = MITH
    REPLACE             -> Replace(‘toy’,’y’,’let’) = tolet


    ROUND               ->
    TRUNC               ->
    MOD                 ->




    *** DATES ***
    Oracle stores dates in an internal numeric format: century, year, 
    month, day, hours, minutes, seconds.
    The default date format is DD-MON-YY.
    SYSDATE is a function returning date and time.




    SELECT <col name>, LOWER / UPPER (<col name>)
    FROM <table name>

    SELECT <col name>, INITCAP (<col name>)
    FROM <table name>

    NVL (<col name>, value)

    -> this replaces the null value with appropiate valuses that are passed in it
    0  -> 0
    10 -> 10



*/
--------------------------------------------------------------------------------


SELECT FIRST_NAME, UPPER (FIRST_NAME)
FROM EMPLOYEES


SELECT FIRST_NAME, LOWER (FIRST_NAME)
FROM EMPLOYEES


SELECT JOB_ID, INITCAP (JOB_ID)
FROM EMPLOYEES


SELECT LENGTH (FIRST_NAME)
FROM EMPLOYEES

SELECT CONCAT (FIRST_NAME, LAST_NAME)
FROM EMPLOYEES

SELECT SUBSTR ('Steven', 1 ,5)
FROM EMPLOYEES
WHERE FIRST_NAME = 'Steven'



