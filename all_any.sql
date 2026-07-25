-- ==========================================================
-- Topic     : ALL & ANY Operators
-- Database  : Oracle SQL (EMP & DEPT Table)
-- ==========================================================

-- 1. Display the names of employees earning less than all
--    employees working as SALESMAN.

SELECT ENAME
FROM EMP
WHERE SAL < ALL
(
    SELECT SAL
    FROM EMP
    WHERE JOB = 'SALESMAN'
);

------------------------------------------------------------

-- 2. Display the names of employees earning less than at
--    least one SALESMAN.

SELECT ENAME
FROM EMP
WHERE SAL < ANY
(
    SELECT SAL
    FROM EMP
    WHERE JOB = 'SALESMAN'
);

------------------------------------------------------------

-- 3. Display the names of employees earning more than ADAMS.

SELECT ENAME
FROM EMP
WHERE SAL >
(
    SELECT SAL
    FROM EMP
    WHERE ENAME = 'ADAMS'
);

------------------------------------------------------------

-- 4. Display the names of employees earning more than all
--    SALESMEN.

SELECT ENAME
FROM EMP
WHERE SAL > ALL
(
    SELECT SAL
    FROM EMP
    WHERE JOB = 'SALESMAN'
);

------------------------------------------------------------

-- 5. Display details of employees hired after all CLERKS.

SELECT *
FROM EMP
WHERE HIREDATE > ALL
(
    SELECT HIREDATE
    FROM EMP
    WHERE JOB = 'CLERK'
);

------------------------------------------------------------

-- 6. Display employee name and salary of employees earning
--    less than at least one MANAGER.

SELECT ENAME,
       SAL
FROM EMP
WHERE SAL < ANY
(
    SELECT SAL
    FROM EMP
    WHERE JOB = 'MANAGER'
);

------------------------------------------------------------

-- 7. Display employee name and hire date of employees hired
--    before all MANAGERS.

SELECT ENAME,
       HIREDATE
FROM EMP
WHERE HIREDATE < ALL
(
    SELECT HIREDATE
    FROM EMP
    WHERE JOB = 'MANAGER'
);

------------------------------------------------------------

-- 8. Display names of employees hired after all MANAGERS
--    and earning more than all CLERKS.

SELECT ENAME
FROM EMP
WHERE HIREDATE > ALL
(
    SELECT HIREDATE
    FROM EMP
    WHERE JOB = 'MANAGER'
)
AND SAL > ALL
(
    SELECT SAL
    FROM EMP
    WHERE JOB = 'CLERK'
);

------------------------------------------------------------

-- 9. Display details of employees working as CLERK and
--    hired before at least one SALESMAN.

SELECT *
FROM EMP
WHERE JOB = 'CLERK'
AND HIREDATE < ANY
(
    SELECT HIREDATE
    FROM EMP
    WHERE JOB = 'SALESMAN'
);

------------------------------------------------------------

-- 10. Display details of employees working in ACCOUNTING
--     or SALES department.

SELECT E.*
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE D.DNAME IN ('ACCOUNTING', 'SALES');

------------------------------------------------------------

-- 11. Display department names of employees named
--     SMITH, KING and MILLER.

SELECT DISTINCT D.DNAME
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE E.ENAME IN ('SMITH', 'KING', 'MILLER');

------------------------------------------------------------

-- 12. Display details of employees working in
--     NEW YORK or CHICAGO.

SELECT E.*
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE D.LOC IN ('NEW YORK', 'CHICAGO');

------------------------------------------------------------

-- 13. Display employee names hired after all employees
--     of department 10.

SELECT ENAME
FROM EMP
WHERE HIREDATE > ALL
(
    SELECT HIREDATE
    FROM EMP
    WHERE DEPTNO = 10
);
