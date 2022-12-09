/*Name:Sadman Samir Rafith
ID: 22-46018-1
Course: Introduction to database*/

/*1. Display all the employees who are earning more than all the managers.
Ans:*/
select *
from emp
where sal >all(select sal
from emp
where job='MANAGER')

/*2. Display all the employees who are earning more than any of the managers.
Ans:*/
select *
from emp
where sal >any(select sal
from emp
where job='MANAGER')

/*3. Select employee number, job & salaries of all the Analysts who are earning more 
than any of the managers.
Ans:*/
select empno ,job ,sal
from emp
where job='ANALYST' and sal>any(select sal
from emp
where job='MANAGER')

/*4. Select all the employees who work in DALLAS.
Ans:*/
select *
from emp
where deptno in(select deptno
from dept
where loc='DALLAS')

/*5. Select department name & location of all the employees working for CLARK.
Ans:*/
select dname,loc
from dept
where deptno in (select deptno 
from emp 
where mgr in (select empno 
from emp
where ename ='CLARK'))

/*6. Select all the departmental information for all the managers
Ans:*/
select dept.*
from dept,emp
where job='MANAGER'

/*7. Display the first maximum salary.
Ans:*/
select *
from emp 
where sal =(select max(sal)
from emp )

/*8. Display the second maximum salary.
Ans:*/
select max(sal)
from emp
where sal <(select max(sal)
from emp )

/*9. Display the third maximum salary.
Ans:*/
 select min(sal) 
from emp
where sal>(select min(sal)
 from emp
 where sal>(select min(sal) from emp))

/*10. Display all the managers & clerks who work in Accounts and Marketing 
departments.
Ans:*/
Select ENAME,DNAME 
FROM EMP,DEPT
WHERE EMP.DEPTNO=DEPT.DEPTNO
AND JOB IN('MANAGER','CLERK') 
AND DNAME IN('MARKETING','ACCOUNTING')

/*11. Display all the salesmen who are not located at DALLAS.
Ans:*/
 Select ENAME,JOB 
FROM EMP,DEPT 
WHERE EMP.DEPTNO=DEPT.DEPTNO AND JOB='SALESMAN' AND DNAME<>'DALLAS'

/*12. Get all the employees who work in the same departments as of SCOTT.
Ans:*/
 Select * 
FROM EMP 
WHERE JOB = (SELECT JOB 
 FROM EMP 
 WHERE ENAME='SCOTT')

/*13. Select all the employees who are earning same as SMITH.
Ans:*/
Select * FROM EMP 
WHERE SAL = (SELECT SAL FROM EMP WHERE ENAME = 'SMITH')

/*14. Display all the employees who are getting some commission in marketing 
department where the employees have joined only on weekdays.
Ans:*/
 select*
from emp where deptno= (select deptno from dept where dname ='MARKETING')
and to_char (hiredate, 'day') not in ('Friday','Saturday')

/*15. Display all the employees who are getting more than the average salaries of all the 
employees.
Ans:*/
 Select empno, ename, deptno
FROM emp e
WHERE sal > (SELECT AVG(sal)
FROM emp e1
WHERE e.deptno = e1.deptno
GROUP BY deptno)
ORDER BY deptno