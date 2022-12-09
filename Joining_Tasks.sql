/*
Name: Sadman samir Rafith
ID: 22-460018-1



*** TASKS ON EQUI-JOINS ***                  */

/*1.	Display all the managers & clerks who work in Accounts and Marketing departments.
Ans:*/
select emp.*,dept.* 
from emp,dept
where emp.deptno=dept.deptno and emp.jobin('MANAGER','CLERK') and dept.dname in ('ACCOUNTING','MARKETING')

/*2.	Display all the salesmen who are not located at DALLAS.
Ans:*/
select emp.*,dept.* 
from emp,dept 
where emp.deptno=dept.deptno andemp.job='SALESMAN' and dept.loc<>'DALLAS'

/*3.	Select department name & location of all the employees working for CLARK.
Ans:*/
select dept.dname, dept.loc,emp.ename 
from emp,dept
where emp.deptno=dept.deptno
and emp.ename ='CLARK'

 
/*4.	Select all the departmental information for all the managers
Ans:*/
select dept.* 
from dept,emp 
where emp.deptno=dept.deptno 
and emp.job='MANAGER'

/*5.	Select all the employees who work in DALLAS.
Ans:*/
select emp.* 
from emp,dept 
where emp.deptno=dept.deptno 
and dept.loc='DALLAS'

/*6.	Delete the records from the DEPT table that don’t have matching records in EMP
Ans:*/
DELETE FROM DEPT 
WHERE NOT EXISTS 
(SELECT * FROM EMP WHERE DEPT.DEPTNO = EMP.DEPTNO)




/* *** TASKS ON OUTER-JOINS ***

7.	Display all the departmental information for all the existing employees and if a department has no employees display it as “No employees”.
Ans:*/
SELECT NVL2(ENAME,DNAME,'NO EMPLOYEE'),DNAME
FROM EMP,DEPT
WHERE EMP.DEPTNO(+)=DEPT.DEPTNO

/*8.	Get all the matching & non-matching records from both the tables.
Ans:*/
SELECT EMP.*,DEPT.* FROM EMP FULL OUTER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO
UNION
SELECT EMP.*,DEPT.* FROM EMP,DEPT WHERE EMP.DEPTNO(+)=DEPT.DEPTNO
UNION
SELECT EMP.*,DEPT.* FROM EMP,DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO(+) 

 
/*9.	Get only the non-matching records from DEPT table (matching records shouldn’t be selected).
Ans:*/
SELECT EMP.*,DEPT.* FROM EMP full outer join DEPT on EMP.DEPTNO=DEPT.DEPTNO
MINUS
(SELECT EMP.*,DEPT.* FROM EMP,DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO(+) INTERSECT SELECT EMP.*,DEPT.* FROM EMP,DEPT WHERE EMP.DEPTNO(+)=DEPT.DEPTNO)


/*10.	Select all the employees name along with their manager names, and if an employee does not have a manager, display him as “CEO”.
Ans:*/
SELECT A.ENAME ,NVL(B.ENAME,'CEO') MANAGER
FROM EMP A,EMP B
WHERE A.MGR=B.EMPNO(+)



/* *** TASKS ON SELF-JOINS ***

11.	Get all the employees who work in the same departments as of SCOTT
Ans:*/
SELECT DISTINCT A.ENAME 
FROM EMP A, EMP B 
WHERE A.DEPTNO=(SELECT DEPTNO FROM EMP WHERE ENAME='SCOTT') 
AND A.ENAME<>'SCOTT'

/*12.	Display all the employees who have joined before their managers.
Ans:*/
SELECT A.ENAME  ,A.HIREDATE,B.HIREDATE
FROM EMP A,EMP B 
WHERE A.MGR=B.EMPNO 
AND A.HIREDATE<B.HIREDATE


/*13.	List all the employees who are earning more than their managers.
Ans:*/
SELECT A.ENAME ,A.SAL , B.ENAME,B.SAL 
FROM EMP A,EMP B 
WHERE A.MGR=B.EMPNO 
AND A.SAL>B.SAL


/*14.	Fetch all the employees who are earning same salaries.
Ans:*/
SELECT A.ENAME,A.SAL 
FROM EMP A,EMP B 
WHERE A.SAL=B.SAL 
AND A.EMPNO<>B.EMPNO


/*15.	Select all the employees who are earning same as SMITH.Display employee name , his date of joining, his manager name & his manager's date of joining.
Ans:*/
SELECT A.ENAME EMPLOYEE, A.HIREDATE EMP_HIREDATE, B.ENAME MGR, B.HIREDATE MGR_HIREDATE
FROM EMP A, EMP B
WHERE A.MGR=B.EMPNO 
AND A.SAL =(SELECT SAL FROM EMP WHERE ENAME ='SMITH');

