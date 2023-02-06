/*                         SELECT Statement


SELECT statements are used to fetch data from a database. Every Querry will begin with SELECT
 the syntax: */

 SELECT column1, column2,.....
 FROM table_name                   /*(Here, column1, column2, ... are the field names of the table you want to select data from)

Example:*/
SELECT ENAME, JOB
FROM EMP

/*If you want to select all the fields available in the table, use the following syntax:*/

SELECT *
FROM table_name

/*Example:*/

SELECT *
FROM EMP




