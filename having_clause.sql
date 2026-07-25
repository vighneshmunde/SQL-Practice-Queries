-- ==========================================================
-- Topic     : HAVING Clause
-- Database  : Oracle SQL (EMP Table)
-- ==========================================================

-- 1. Display the departments having at least 3 employees.

SELECT DEPTNO,
       COUNT(*) AS TOTAL_EMPLOYEES
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*) >= 3;

------------------------------------------------------------

-- 2. Display the job titles having at least 2 employees.

SELECT JOB,
       COUNT(*) AS TOTAL_EMPLOYEES
FROM EMP
GROUP BY JOB
HAVING COUNT(*) >= 2;

------------------------------------------------------------

-- 3. Display the employee names that are repeated.

SELECT ENAME,
       COUNT(*) AS OCCURRENCES
FROM EMP
GROUP BY ENAME
HAVING COUNT(*) > 1;

------------------------------------------------------------

-- 4. Display the employee names repeated exactly twice.

SELECT ENAME,
       COUNT(*) AS OCCURRENCES
FROM EMP
GROUP BY ENAME
HAVING COUNT(*) = 2;

------------------------------------------------------------

-- 5. Display the salaries that are repeated.

SELECT SAL,
       COUNT(*) AS OCCURRENCES
FROM EMP
GROUP BY SAL
HAVING COUNT(*) > 1;

------------------------------------------------------------

-- 6. Display the number of employees in each department
--    having at least 2 employees whose names contain
--    'A' or 'S'.

SELECT DEPTNO,
       COUNT(*) AS TOTAL_EMPLOYEES
FROM EMP
WHERE ENAME LIKE '%A%'
   OR ENAME LIKE '%S%'
GROUP BY DEPTNO
HAVING COUNT(*) >= 2;

------------------------------------------------------------

-- 7. Display the total salary for each job where the
--    total salary is greater than 3450.

SELECT JOB,
       SUM(SAL) AS TOTAL_SALARY
FROM EMP
GROUP BY JOB
HAVING SUM(SAL) > 3450;

------------------------------------------------------------

-- 8. Display the total salary for each job where employees
--    earn more than 1500.

SELECT JOB,
       SUM(SAL) AS TOTAL_SALARY
FROM EMP
WHERE SAL > 1500
GROUP BY JOB;

------------------------------------------------------------

-- 9. Display the maximum salary for each job where the
--    maximum salary exceeds 2000.

SELECT JOB,
       MAX(SAL) AS MAXIMUM_SALARY
FROM EMP
GROUP BY JOB
HAVING MAX(SAL) > 2000;

------------------------------------------------------------

-- 10. Display the number of employees earning more than
--     1200 in each job where the total salary exceeds 3800.

SELECT JOB,
       COUNT(*) AS TOTAL_EMPLOYEES,
       SUM(SAL) AS TOTAL_SALARY
FROM EMP
WHERE SAL > 1200
GROUP BY JOB
HAVING SUM(SAL) > 3800;
