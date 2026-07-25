-- ==========================================================
-- Topic     : Joins (EMP & DEPT)
-- Database  : Oracle SQL
-- ==========================================================

-- 1. Display employee name and location of all employees.

SELECT E.ENAME,
       D.LOC
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;

------------------------------------------------------------

-- 2. Display department name and salary of employees
--    working in ACCOUNTING.

SELECT D.DNAME,
       E.SAL
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE D.DNAME = 'ACCOUNTING';

------------------------------------------------------------

-- 3. Display department name and annual salary of employees
--    whose salary is greater than 2340.

SELECT D.DNAME,
       E.SAL * 12 AS ANNUAL_SALARY
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE E.SAL > 2340;

------------------------------------------------------------

-- 4. Display employee name and department name for employees
--    whose department name contains the character 'A'.

SELECT E.ENAME,
       D.DNAME
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE D.DNAME LIKE '%A%';

------------------------------------------------------------

-- 5. Display employee name and department name for all
--    employees working as SALESMAN.

SELECT E.ENAME,
       D.DNAME
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE E.JOB = 'SALESMAN';

------------------------------------------------------------

-- 6. Display department name and job for employees whose
--    department name and job both start with 'S'.

SELECT D.DNAME,
       E.JOB
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE D.DNAME LIKE 'S%'
AND E.JOB LIKE 'S%';

------------------------------------------------------------

-- 7. Display department name and manager number for employees
--    reporting to manager 7839.

SELECT D.DNAME,
       E.MGR
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE E.MGR = 7839;

------------------------------------------------------------

-- 8. Display department name and hire date of employees
--    hired after 1983 in ACCOUNTING or RESEARCH department.

SELECT D.DNAME,
       E.HIREDATE
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE EXTRACT(YEAR FROM E.HIREDATE) > 1983
AND D.DNAME IN ('ACCOUNTING', 'RESEARCH');

------------------------------------------------------------

-- 9. Display employee name and department name of employees
--    getting commission in department 10 or 30.

SELECT E.ENAME,
       D.DNAME
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE E.COMM IS NOT NULL
AND E.DEPTNO IN (10,30);

------------------------------------------------------------

-- 10. Display department name and employee number for
--     employees whose employee numbers are 7839 or 7902
--     and working in NEW YORK.

SELECT D.DNAME,
       E.EMPNO
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE E.EMPNO IN (7839,7902)
AND D.LOC = 'NEW YORK';
