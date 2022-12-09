/*

MD. TAHSIN HASIB 22-46026-1

1. Display employees first name and salary whose salary is 17000
2. Display employees first name and department id of those whose department id is 90
3. Display employees first name and salary whose salary is equal 17000 or 24000
4. Display employees first name and salary whose first name is Steven

5. Display employees first name and salary whose salary is equal to Lex salary
6. Display employees frist name and department id of those whose department id is same as Neena

7. Display employees first name and salary of those whose employee who gets more salary than Neena
8. Display employees first name and salary oF those employeee who same salary as Steven
9. Display employees first name and department id of those employee who works in same department as Steven
10. Display  employees first name, department id and salary of those whose department is same as Neena or whose salary is same as Lex

11. Display first name and salary of those employee who gets more salary than Steven

    ALL -> this stands for all!
    ANY -> returns if at least one occurence found!


12. Display first name and salary of those employee who gets less salary than all Steven
13. Display first name and salary of those employee who gets minimum salary
14. Display the first name and salary of the employee who gets department wise minimum salary

*/



-- ANSWERS
------------------------------------------------
1.
SELECT FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY = 17000
------------------------------------------------

2.
SELECT FIRST_NAME, DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 90
------------------------------------------------

3.
SELECT FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY IN (17000, 24000) 
------------------------------------------------

4.
SELECT FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE FIRST_NAME = 'Steven'
------------------------------------------------

5.
SELECT SALARY
FROM EMPLOYEES
WHERE FIRST_NAME = 'Lex'

/*
   Lex's Salary
*/

SELECT FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY = (
    SELECT SALARY
    FROM EMPLOYEES
    WHERE FIRST_NAME = 'Lex'
)
------------------------------------------------

6.
SELECT FIRST_NAME, DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID = (
    SELECT DEPARTMENT_ID
    FROM EMPLOYEES
    WHERE FIRST_NAME = 'Neena'
)
------------------------------------------------

7.
SELECT FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY > (
    SELECT SALARY
    FROM EMPLOYEES
    WHERE FIRST_NAME = 'Neena'
)
------------------------------------------------

8.
SELECT FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY IN (
    SELECT SALARY
    FROM EMPLOYEES
    WHERE FIRST_NAME = 'Steven'
)
------------------------------------------------

9.
SELECT FIRST_NAME, DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID IN (
    SELECT DEPARTMENT_ID
    FROM EMPLOYEES
    WHERE FIRST_NAME = 'Steven'
)
------------------------------------------------

10.
SELECT FIRST_NAME, DEPARTMENT_ID, SALARY
FROM EMPLOYEES
WHERE DEPARTMENT_ID IN (
    SELECT DEPARTMENT_ID
    FROM EMPLOYEES
    WHERE FIRST_NAME = 'Neena'
)
OR SALARY IN (
    SELECT DEPARTMENT_ID
    FROM EMPLOYEES
    WHERE FIRST_NAME = 'Lex'
)
------------------------------------------------

11.
SELECT FIRST_NAME, SALARY 
FROM EMPLOYEES
WHERE SALARY > ANY (
    SELECT SALARY
    FROM EMPLOYEES
    WHERE FIRST_NAME = 'Steven'
)
 ------------------------------------------------

SELECT FIRST_NAME, SALARY 
FROM EMPLOYEES
WHERE SALARY > ALL (
    SELECT SALARY
    FROM EMPLOYEES
    WHERE FIRST_NAME = 'Steven'
)
------------------------------------------------

12.
SELECT FIRST_NAME, SALARY 
FROM EMPLOYEES
WHERE SALARY < ALL (
    SELECT SALARY
    FROM EMPLOYEES
    WHERE FIRST_NAME = 'Steven'
)
------------------------------------------------

13.
SELECT FIRST_NAME, SALARY 
FROM EMPLOYEES
WHERE SALARY = (
    SELECT MIN(SALARY)
    FROM EMPLOYEES
)
------------------------------------------------

14.
SELECT FIRST_NAME, SALARY 
FROM EMPLOYEES
WHERE SALARY IN (
    SELECT MIN(SALARY)
    FROM EMPLOYEES
    GROUP BY DEPARTMENT_ID
)
------------------------------------------------
