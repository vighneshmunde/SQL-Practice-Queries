-- ==========================================================
-- Topic : WHERE Clause
-- Database : Oracle SQL (EMP Table)
-- ==========================================================

-- 1. Display the annual salary of employee SMITH.

SELECT ENAME,
       SAL,
       SAL * 12 AS ANNUAL_SALARY
FROM EMP
WHERE ENAME = 'SMITH';

------------------------------------------------------------

-- 2. Display the names of employees working as CLERK.

SELECT ENAME
FROM EMP
WHERE JOB = 'CLERK';

------------------------------------------------------------

-- 3. Display the salary of employees working as SALESMAN.

SELECT ENAME,
       SAL
FROM EMP
WHERE JOB = 'SALESMAN';

------------------------------------------------------------

-- 4. Display the details of employees earning more than 2000.

SELECT *
FROM EMP
WHERE SAL > 2000;

------------------------------------------------------------

-- 5. Display the details of employee JONES.

SELECT *
FROM EMP
WHERE ENAME = 'JONES';

------------------------------------------------------------

-- 6. Display the details of employees hired after 01-JAN-1981.

SELECT *
FROM EMP
WHERE HIREDATE > TO_DATE('01-JAN-1981', 'DD-MON-YYYY');

------------------------------------------------------------

-- 7. Display employee name, salary and annual salary if annual salary is more than 12000.

SELECT ENAME,
       SAL,
       SAL * 12 AS ANNUAL_SALARY
FROM EMP
WHERE SAL * 12 > 12000;

------------------------------------------------------------

-- 8. Display employee numbers of employees working in department 30.

SELECT EMPNO
FROM EMP
WHERE DEPTNO = 30;

------------------------------------------------------------

-- 9. Display employee name and hire date if hired before the year 1981.

SELECT ENAME,
       HIREDATE
FROM EMP
WHERE HIREDATE < TO_DATE('01-JAN-1981', 'DD-MON-YYYY');

------------------------------------------------------------

-- 10. Display details of employees working as MANAGER.

SELECT *
FROM EMP
WHERE JOB = 'MANAGER';

------------------------------------------------------------

-- 11. Display employee name and salary of employees receiving a commission of 1400.

SELECT ENAME,
       SAL
FROM EMP
WHERE COMM = 1400;

------------------------------------------------------------

-- 12. Display details of employees whose commission is greater than their salary.

SELECT *
FROM EMP
WHERE COMM > SAL;

------------------------------------------------------------

-- 13. Display employee numbers of employees hired before the year 1987.

SELECT EMPNO
FROM EMP
WHERE HIREDATE < TO_DATE('01-JAN-1987', 'DD-MON-YYYY');

------------------------------------------------------------

-- 14. Display details of employees working as ANALYST.

SELECT *
FROM EMP
WHERE JOB = 'ANALYST';

------------------------------------------------------------

-- 15. Display details of employees earning more than 2000 per month.

SELECT *
FROM EMP
WHERE SAL > 2000;
