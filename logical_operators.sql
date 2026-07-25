-- ==========================================================
-- Topic : Logical Operators (AND, OR)
-- Database : Oracle SQL (EMP Table)
-- ==========================================================

-- 1. Display employee name, department number and job of employees working in department 10.

SELECT ENAME,
       DEPTNO,
       JOB
FROM EMP
WHERE DEPTNO = 10;

------------------------------------------------------------

-- 2. Display employee name, department number and job of employees working as MANAGER in department 10.

SELECT ENAME,
       DEPTNO,
       JOB
FROM EMP
WHERE JOB = 'MANAGER'
AND DEPTNO = 10;

------------------------------------------------------------

-- 3. Display employee name, department number and salary of employees working in department 20 and earning less than 3000.

SELECT ENAME,
       DEPTNO,
       SAL
FROM EMP
WHERE DEPTNO = 20
AND SAL < 3000;

------------------------------------------------------------

-- 4. Display employee name and salary of employees earning more than 1250 but less than 3000.

SELECT ENAME,
       SAL
FROM EMP
WHERE SAL > 1250
AND SAL < 3000;

------------------------------------------------------------

-- 5. Display employee name and department number of employees working in department 10 or 20.

SELECT ENAME,
       DEPTNO
FROM EMP
WHERE DEPTNO = 10
OR DEPTNO = 20;

------------------------------------------------------------

-- 6. Display employee name, salary and department number of employees earning more than 1250 but less than 4000 and working in department 20.

SELECT ENAME,
       SAL,
       DEPTNO
FROM EMP
WHERE SAL > 1250
AND SAL < 4000
AND DEPTNO = 20;

------------------------------------------------------------

-- 7. Display employee name, job and department number of employees working as MANAGER in department 10 or 30.

SELECT ENAME,
       JOB,
       DEPTNO
FROM EMP
WHERE JOB = 'MANAGER'
AND (DEPTNO = 10 OR DEPTNO = 30);

------------------------------------------------------------

-- 8. Display employee name, department number and job of employees working as CLERK in department 10, 20 or 30.

SELECT ENAME,
       DEPTNO,
       JOB
FROM EMP
WHERE JOB = 'CLERK'
AND (DEPTNO = 10 OR DEPTNO = 20 OR DEPTNO = 30);

------------------------------------------------------------

-- 9. Display employee name, job and department number of employees working as CLERK or MANAGER in department 10.

SELECT ENAME,
       JOB,
       DEPTNO
FROM EMP
WHERE (JOB = 'CLERK'
OR JOB = 'MANAGER')
AND DEPTNO = 10;

------------------------------------------------------------

-- 10. Display employee name, job, department number and salary of employees working as CLERK or SALESMAN in department 10 or 30 and earning more than 1800.

SELECT ENAME,
       JOB,
       DEPTNO,
       SAL
FROM EMP
WHERE (JOB = 'CLERK'
OR JOB = 'SALESMAN')
AND (DEPTNO = 10
OR DEPTNO = 30)
AND SAL > 1800;
