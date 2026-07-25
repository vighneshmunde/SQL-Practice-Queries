-- ==========================================================
-- Topic     : Subqueries
-- Database  : Oracle SQL (EMP Table)
-- ==========================================================

-- 1. Display the names of employees earning more than 2500.

SELECT ENAME
FROM EMP
WHERE SAL > 2500;

------------------------------------------------------------

-- 2. Display the names of employees earning less than MILLER.

SELECT ENAME
FROM EMP
WHERE SAL <
(
    SELECT SAL
    FROM EMP
    WHERE ENAME = 'MILLER'
);

------------------------------------------------------------

-- 3. Display employee name and department number of employees
--    working in the same department as SMITH.

SELECT ENAME,
       DEPTNO
FROM EMP
WHERE DEPTNO =
(
    SELECT DEPTNO
    FROM EMP
    WHERE ENAME = 'SMITH'
);

------------------------------------------------------------

-- 4. Display employee name and hire date of employees hired
--    after JONES.

SELECT ENAME,
       HIREDATE
FROM EMP
WHERE HIREDATE >
(
    SELECT HIREDATE
    FROM EMP
    WHERE ENAME = 'JONES'
);

------------------------------------------------------------

-- 5. Display details of employees working in the same job
--    as KING.

SELECT *
FROM EMP
WHERE JOB =
(
    SELECT JOB
    FROM EMP
    WHERE ENAME = 'KING'
);

------------------------------------------------------------

-- 6. Display employee name, salary and department number of
--    employees earning more than 2000 and working in the
--    same department as JAMES.

SELECT ENAME,
       SAL,
       DEPTNO
FROM EMP
WHERE SAL > 2000
AND DEPTNO =
(
    SELECT DEPTNO
    FROM EMP
    WHERE ENAME = 'JAMES'
);

------------------------------------------------------------

-- 7. Display details of employees working in the same job
--    as MILLER and earning more than 1500.

SELECT *
FROM EMP
WHERE JOB =
(
    SELECT JOB
    FROM EMP
    WHERE ENAME = 'MILLER'
)
AND SAL > 1500;

------------------------------------------------------------

-- 8. Display details of employees earning more than SMITH
--    but less than KING.

SELECT *
FROM EMP
WHERE SAL >
(
    SELECT SAL
    FROM EMP
    WHERE ENAME = 'SMITH'
)
AND SAL <
(
    SELECT SAL
    FROM EMP
    WHERE ENAME = 'KING'
);

------------------------------------------------------------

-- 9. Display employee name, salary and department number of
--    employees earning commission in department 20 and
--    earning salary greater than SCOTT.

SELECT ENAME,
       SAL,
       DEPTNO
FROM EMP
WHERE COMM IS NOT NULL
AND DEPTNO = 20
AND SAL >
(
    SELECT SAL
    FROM EMP
    WHERE ENAME = 'SCOTT'
);

------------------------------------------------------------

-- 10. Display employee name and hire date of employees whose
--     name ends with 'S' and were hired after JAMES.

SELECT ENAME,
       HIREDATE
FROM EMP
WHERE ENAME LIKE '%S'
AND HIREDATE >
(
    SELECT HIREDATE
    FROM EMP
    WHERE ENAME = 'JAMES'
);

------------------------------------------------------------

-- 11. Display names of employees who:
--     - Work in the same department as JAMES
--     - Earn more than ADAMS
--     - Work in the same job as MILLER
--     - Were hired after MARTIN

SELECT ENAME
FROM EMP
WHERE DEPTNO =
(
    SELECT DEPTNO
    FROM EMP
    WHERE ENAME = 'JAMES'
)
AND SAL >
(
    SELECT SAL
    FROM EMP
    WHERE ENAME = 'ADAMS'
)
AND JOB =
(
    SELECT JOB
    FROM EMP
    WHERE ENAME = 'MILLER'
)
AND HIREDATE >
(
    SELECT HIREDATE
    FROM EMP
    WHERE ENAME = 'MARTIN'
);

------------------------------------------------------------

-- 12. Display details of employees working as SALESMAN in
--     department 20, earning commission greater than SMITH
--     and hired after KING.

SELECT *
FROM EMP
WHERE JOB = 'SALESMAN'
AND DEPTNO = 20
AND COMM >
(
    SELECT NVL(COMM,0)
    FROM EMP
    WHERE ENAME = 'SMITH'
)
AND HIREDATE >
(
    SELECT HIREDATE
    FROM EMP
    WHERE ENAME = 'KING'
);

------------------------------------------------------------

-- 13. Display the number of employees earning more than
--     SMITH but less than MARTIN.

SELECT COUNT(*) AS TOTAL_EMPLOYEES
FROM EMP
WHERE SAL >
(
    SELECT SAL
    FROM EMP
    WHERE ENAME = 'SMITH'
)
AND SAL <
(
    SELECT SAL
    FROM EMP
    WHERE ENAME = 'MARTIN'
);

------------------------------------------------------------

-- 14. Display employee name and salary of employees earning
--     more than JONES.

SELECT ENAME,
       SAL
FROM EMP
WHERE SAL >
(
    SELECT SAL
    FROM EMP
    WHERE ENAME = 'JONES'
);

------------------------------------------------------------

-- 15. Display details of employees working as MANAGER.

SELECT *
FROM EMP
WHERE JOB =
(
    SELECT JOB
    FROM EMP
    WHERE ENAME = 'JONES'
);
