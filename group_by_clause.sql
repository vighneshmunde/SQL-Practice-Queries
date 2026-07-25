-- ==========================================================
-- Topic     : GROUP BY Clause
-- Database  : Oracle SQL (EMP Table)
-- ==========================================================

-- 1. Display the number of employees working in each job.

SELECT JOB,
       COUNT(*) AS TOTAL_EMPLOYEES
FROM EMP
GROUP BY JOB;

------------------------------------------------------------

-- 2. Display the number of employees working in each department.

SELECT DEPTNO,
       COUNT(*) AS TOTAL_EMPLOYEES
FROM EMP
GROUP BY DEPTNO;

------------------------------------------------------------

-- 3. Display the number of employees working in each department
--    except employees working as ANALYST.

SELECT DEPTNO,
       COUNT(*) AS TOTAL_EMPLOYEES
FROM EMP
WHERE JOB <> 'ANALYST'
GROUP BY DEPTNO;

------------------------------------------------------------

-- 4. Display the maximum salary given for each job.

SELECT JOB,
       MAX(SAL) AS MAX_SALARY
FROM EMP
GROUP BY JOB;

------------------------------------------------------------

-- 5. Display the number of employees working in each job
--    whose names contain the character 'A'.

SELECT JOB,
       COUNT(*) AS TOTAL_EMPLOYEES
FROM EMP
WHERE ENAME LIKE '%A%'
GROUP BY JOB;

------------------------------------------------------------

-- 6. Display the number of employees receiving commission
--    in each department.

SELECT DEPTNO,
       COUNT(COMM) AS EMPLOYEES_WITH_COMMISSION
FROM EMP
GROUP BY DEPTNO;

------------------------------------------------------------

-- 7. Display the total salary paid in each department.

SELECT DEPTNO,
       SUM(SAL) AS TOTAL_SALARY
FROM EMP
GROUP BY DEPTNO;

------------------------------------------------------------

-- 8. Display the average salary in each department.

SELECT DEPTNO,
       ROUND(AVG(SAL), 2) AS AVERAGE_SALARY
FROM EMP
GROUP BY DEPTNO;

------------------------------------------------------------

-- 9. Display the minimum salary in each department.

SELECT DEPTNO,
       MIN(SAL) AS MINIMUM_SALARY
FROM EMP
GROUP BY DEPTNO;

------------------------------------------------------------

-- 10. Display the maximum salary in each department.

SELECT DEPTNO,
       MAX(SAL) AS MAXIMUM_SALARY
FROM EMP
GROUP BY DEPTNO;

------------------------------------------------------------

-- 11. Display the total commission paid in each department.

SELECT DEPTNO,
       SUM(COMM) AS TOTAL_COMMISSION
FROM EMP
GROUP BY DEPTNO;

------------------------------------------------------------

-- 12. Display the average commission in each department.

SELECT DEPTNO,
       ROUND(AVG(COMM), 2) AS AVERAGE_COMMISSION
FROM EMP
GROUP BY DEPTNO;

------------------------------------------------------------

-- 13. Display the total salary paid for each job.

SELECT JOB,
       SUM(SAL) AS TOTAL_SALARY
FROM EMP
GROUP BY JOB;

------------------------------------------------------------

-- 14. Display the average salary for each job.

SELECT JOB,
       ROUND(AVG(SAL), 2) AS AVERAGE_SALARY
FROM EMP
GROUP BY JOB;

------------------------------------------------------------

-- 15. Display the maximum, minimum and average salary
--     for each department.

SELECT DEPTNO,
       MAX(SAL) AS MAXIMUM_SALARY,
       MIN(SAL) AS MINIMUM_SALARY,
       ROUND(AVG(SAL), 2) AS AVERAGE_SALARY
FROM EMP
GROUP BY DEPTNO;
