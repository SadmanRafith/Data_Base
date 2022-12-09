/*------------------------------------------------------------------------------------------------------------------

1. Display First Name and Department ID of the Employees who doesn't work in Department 90.
2. Display First Name and Department ID of the Employees who works in Department 10 or 20 or 30.
3. Display First Name and Salary of the Employees whose salary is between 10000 to 20000.
4. Find out the First Name of the Employees which starts from S.
5. Find out those who have at least 1 a's on their name.
6. Find out who have 'a' as their second word of their first name.
7. Find out who have 'a' as their third word of their first name.
8. Find out whose salary starts with digit 1.
9. Sort Department ID to Ascending/Descending order.
10. Find out those who have salary of four digits.



------------------------------------------------------------------------------------------------------------------

Not equal sign/symbol can be expressed as <> instead of !=
In order to access data in same column we can use "column_name" IN (n, n, n)

------------------------------------------------------------------------------------------------------------------
Solutions
------------------------------------------------------------------------------------------------------------------*/

SELECT * FROM EMPLOYEES


1. SELECT FIRST_NAME, DEPARTMENT_ID FROM EMPLOYEES WHERE DEPARTMENT_ID <> 10

2. SELECT FIRST_NAME, DEPARTMENT_ID FROM EMPLOYEES WHERE DEPARTMENT_ID IN (10,20,30)

3. SELECT FIRST_NAME, SALARY FROM EMPLOYEES WHERE SALARY BETWEEN 10000 AND 20000

4. SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE 'S%'

5. SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE '%a%'

6. SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE '_a%'

7. SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE '__a%'

8. SELECT FIRST_NAME, SALARY FROM EMPLOYEES WHERE SALARY LIKE '1%'

9. SELECT FIRST_NAME, SALARY, DEPARTMENT_ID FROM EMPLOYEES ORDER BY DEPARTMENT_ID ASC

9. SELECT FIRST_NAME, SALARY, DEPARTMENT_ID FROM EMPLOYEES ORDER BY DEPARTMENT_ID DESC

10. SELECT FIRST_NAME, SALARY FROM EMPLOYEES WHERE SALARY LIKE '____'






-------------------------------------------------------------------------------------
//OLD APPROACH AND EXPLANATION
-------------------------------------------------------------------------------------


SELECT FIRST_NAME, SALARY FROM EMPLOYEES WHERE SALARY >= 10000 AND SALARY <= 20000

-------------------------------------------------------
(a-z) before x (First name) 
------------------------------
SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE 'A%'

(a-z) after x (Last name)
------------------------------
SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE '%a'
-------------------------------------------------------
% means character after/ before
--------------------------------------

(BACKWORD LAST THIRD ELEMENT)
------------------------------
SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE '%a__'
-------------------------------------------------------



