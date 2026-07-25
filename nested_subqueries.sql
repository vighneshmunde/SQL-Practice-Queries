-- ==========================================================
-- Topic     : Nested Subqueries
-- Database  : Oracle SQL (EMP Table)
-- ==========================================================

-- 1. Display the 4th minimum salary.

SELECT MIN(SAL) AS FOURTH_MINIMUM_SALARY
FROM EMP
WHERE SAL >
(
    SELECT MIN(SAL)
    FROM EMP
    WHERE SAL >
    (
        SELECT MIN(SAL)
        FROM EMP
        WHERE SAL >
        (
            SELECT MIN(SAL)
            FROM EMP
        )
    )
);

------------------------------------------------------------

-- 2. Display the 4th maximum salary.

SELECT MAX(SAL) AS FOURTH_MAXIMUM_SALARY
FROM EMP
WHERE SAL <
(
    SELECT MAX(SAL)
    FROM EMP
    WHERE SAL <
    (
        SELECT MAX(SAL)
        FROM EMP
        WHERE SAL <
        (
            SELECT MAX(SAL)
            FROM EMP
        )
    )
);

------------------------------------------------------------

-- 3. Display the name of the employee earning the 3rd maximum salary.

SELECT ENAME
FROM EMP
WHERE SAL =
(
    SELECT MAX(SAL)
    FROM EMP
    WHERE SAL <
    (
        SELECT MAX(SAL)
        FROM EMP
        WHERE SAL <
        (
            SELECT MAX(SAL)
            FROM EMP
        )
    )
);

------------------------------------------------------------

-- 4. Display the employee number of the employee earning the 2nd maximum salary.

SELECT EMPNO
FROM EMP
WHERE SAL =
(
    SELECT MAX(SAL)
    FROM EMP
    WHERE SAL <
    (
        SELECT MAX(SAL)
        FROM EMP
    )
);

------------------------------------------------------------

-- 5. Display the department name of the employee getting the 4th maximum salary.

SELECT D.DNAME
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE E.SAL =
(
    SELECT MAX(SAL)
    FROM EMP
    WHERE SAL <
    (
        SELECT MAX(SAL)
        FROM EMP
        WHERE SAL <
        (
            SELECT MAX(SAL)
            FROM EMP
            WHERE SAL <
            (
                SELECT MAX(SAL)
                FROM EMP
            )
        )
    )
);

------------------------------------------------------------

-- 6. Display the details of the employee who was hired second.

SELECT *
FROM EMP
WHERE HIREDATE =
(
    SELECT MIN(HIREDATE)
    FROM EMP
    WHERE HIREDATE >
    (
        SELECT MIN(HIREDATE)
        FROM EMP
    )
);

------------------------------------------------------------

-- 7. Display the name of the employee hired before the last employee.

SELECT ENAME
FROM EMP
WHERE HIREDATE =
(
    SELECT MAX(HIREDATE)
    FROM EMP
    WHERE HIREDATE <
    (
        SELECT MAX(HIREDATE)
        FROM EMP
    )
);

------------------------------------------------------------

-- 8. Display the location of the employee who was hired first.

SELECT D.LOC
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE E.HIREDATE =
(
    SELECT MIN(HIREDATE)
    FROM EMP
);

------------------------------------------------------------

-- 9. Display the details of the employee earning the 5th minimum salary.

SELECT *
FROM EMP
WHERE SAL =
(
    SELECT MIN(SAL)
    FROM EMP
    WHERE SAL >
    (
        SELECT MIN(SAL)
        FROM EMP
        WHERE SAL >
        (
            SELECT MIN(SAL)
            FROM EMP
            WHERE SAL >
            (
                SELECT MIN(SAL)
                FROM EMP
                WHERE SAL >
                (
                    SELECT MIN(SAL)
                    FROM EMP
                )
            )
        )
    )
);

------------------------------------------------------------

-- 10. Display the department name of the employee getting the 2nd maximum salary.

SELECT D.DNAME
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE E.SAL =
(
    SELECT MAX(SAL)
    FROM EMP
    WHERE SAL <
    (
        SELECT MAX(SAL)
        FROM EMP
    )
);
