-- ==========================================================
-- Topic     : Employee - Manager Relationship (Self Join)
-- Database  : Oracle SQL (EMP & DEPT Table)
-- ==========================================================

-- 1. Display the name of SMITH's manager's manager.

SELECT M2.ENAME AS MANAGERS_MANAGER
FROM EMP E
JOIN EMP M1 ON E.MGR = M1.EMPNO
JOIN EMP M2 ON M1.MGR = M2.EMPNO
WHERE E.ENAME = 'SMITH';

------------------------------------------------------------

-- 2. Display the name of ALLEN's manager.

SELECT M.ENAME AS MANAGER
FROM EMP E
JOIN EMP M
ON E.MGR = M.EMPNO
WHERE E.ENAME = 'ALLEN';

------------------------------------------------------------

-- 3. Display the location of ADAMS's manager's manager.

SELECT D.LOC
FROM EMP E
JOIN EMP M1 ON E.MGR = M1.EMPNO
JOIN EMP M2 ON M1.MGR = M2.EMPNO
JOIN DEPT D ON M2.DEPTNO = D.DEPTNO
WHERE E.ENAME = 'ADAMS';

------------------------------------------------------------

-- 4. Display the name of KING's manager.

SELECT M.ENAME AS MANAGER
FROM EMP E
LEFT JOIN EMP M
ON E.MGR = M.EMPNO
WHERE E.ENAME = 'KING';

------------------------------------------------------------

-- 5. Display SMITH's reporting manager.

SELECT M.ENAME AS REPORTING_MANAGER
FROM EMP E
JOIN EMP M
ON E.MGR = M.EMPNO
WHERE E.ENAME = 'SMITH';

------------------------------------------------------------

-- 6. Display ADAMS's manager's manager.

SELECT M2.ENAME AS MANAGERS_MANAGER
FROM EMP E
JOIN EMP M1 ON E.MGR = M1.EMPNO
JOIN EMP M2 ON M1.MGR = M2.EMPNO
WHERE E.ENAME = 'ADAMS';

------------------------------------------------------------

-- 7. Display department name of JONES's manager.

SELECT D.DNAME
FROM EMP E
JOIN EMP M
ON E.MGR = M.EMPNO
JOIN DEPT D
ON M.DEPTNO = D.DEPTNO
WHERE E.ENAME = 'JONES';

------------------------------------------------------------

-- 8. Display MILLER's manager's salary.

SELECT M.SAL
FROM EMP E
JOIN EMP M
ON E.MGR = M.EMPNO
WHERE E.ENAME = 'MILLER';

------------------------------------------------------------

-- 9. Display the location of SMITH's manager's manager.

SELECT D.LOC
FROM EMP E
JOIN EMP M1 ON E.MGR = M1.EMPNO
JOIN EMP M2 ON M1.MGR = M2.EMPNO
JOIN DEPT D ON M2.DEPTNO = D.DEPTNO
WHERE E.ENAME = 'SMITH';

------------------------------------------------------------

-- 10. Display names of employees reporting to BLAKE.

SELECT E.ENAME
FROM EMP E
JOIN EMP M
ON E.MGR = M.EMPNO
WHERE M.ENAME = 'BLAKE';

------------------------------------------------------------

-- 11. Display number of employees reporting to KING.

SELECT COUNT(*) AS TOTAL_EMPLOYEES
FROM EMP E
JOIN EMP M
ON E.MGR = M.EMPNO
WHERE M.ENAME = 'KING';

------------------------------------------------------------

-- 12. Display details of employees reporting to JONES.

SELECT E.*
FROM EMP E
JOIN EMP M
ON E.MGR = M.EMPNO
WHERE M.ENAME = 'JONES';

------------------------------------------------------------

-- 13. Display names of employees reporting to BLAKE's manager.

SELECT E.ENAME
FROM EMP E
JOIN EMP M1 ON E.MGR = M1.EMPNO
JOIN EMP M2 ON M1.MGR = M2.EMPNO
WHERE M2.ENAME = 'BLAKE';

------------------------------------------------------------

-- 14. Display number of employees reporting to FORD's manager.

SELECT COUNT(*) AS TOTAL_EMPLOYEES
FROM EMP E
JOIN EMP M1 ON E.MGR = M1.EMPNO
JOIN EMP M2 ON M1.MGR = M2.EMPNO
WHERE M2.ENAME = 'FORD';

------------------------------------------------------------

-- 15. Display department details of employees reporting to MILLER.

SELECT DISTINCT D.*
FROM EMP E
JOIN EMP M
ON E.MGR = M.EMPNO
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE M.ENAME = 'MILLER';
