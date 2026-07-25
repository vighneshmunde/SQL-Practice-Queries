-- ==========================================================
-- Topic : Aggregate Functions
-- Database : Oracle SQL (EMP Table)
-- ==========================================================

-- 1. Display the maximum salary.

SELECT MAX(SAL) AS MAX_SALARY
FROM EMP;

------------------------------------------------------------

-- 2. Display the minimum salary.

SELECT MIN(SAL) AS MIN_SALARY
FROM EMP;

------------------------------------------------------------

-- 3. Display the average salary.

SELECT ROUND(AVG(SAL),2) AS AVERAGE_SALARY
FROM EMP;

------------------------------------------------------------

-- 4. Display the maximum commission.

SELECT MAX(COMM) AS MAX_COMMISSION
FROM EMP;

------------------------------------------------------------

-- 5. Display the minimum commission.

SELECT MIN(COMM) AS MIN_COMMISSION
FROM EMP;

------------------------------------------------------------

-- 6. Display the average commission.

SELECT ROUND(AVG(COMM),2) AS AVERAGE_COMMISSION
FROM EMP;

------------------------------------------------------------

-- 7. Display the total number of employees.

SELECT COUNT(*) AS TOTAL_EMPLOYEES
FROM EMP;

------------------------------------------------------------

-- 8. Display the total salary of all employees.

SELECT SUM(SAL) AS TOTAL_SALARY
FROM EMP;

------------------------------------------------------------

-- 9. Display maximum salary, minimum salary and average salary.

SELECT MAX(SAL) AS MAX_SALARY,
       MIN(SAL) AS MIN_SALARY,
       ROUND(AVG(SAL),2) AS AVERAGE_SALARY
FROM EMP;

------------------------------------------------------------

-- 10. Display maximum commission, minimum commission and average commission.

SELECT MAX(COMM) AS MAX_COMMISSION,
       MIN(COMM) AS MIN_COMMISSION,
       ROUND(AVG(COMM),2) AS AVERAGE_COMMISSION
FROM EMP;

------------------------------------------------------------

-- 11. Display total salary, maximum salary, minimum salary,
--     average salary and total number of employees.

SELECT SUM(SAL) AS TOTAL_SALARY,
       MAX(SAL) AS MAX_SALARY,
       MIN(SAL) AS MIN_SALARY,
       ROUND(AVG(SAL),2) AS AVERAGE_SALARY,
       COUNT(*) AS TOTAL_EMPLOYEES
FROM EMP;

------------------------------------------------------------

-- 12. Display maximum salary, total salary, minimum salary,
--     total commission, minimum commission, maximum commission,
--     average commission, average salary and total employees.

SELECT MAX(SAL) AS MAX_SALARY,
       SUM(SAL) AS TOTAL_SALARY,
       MIN(SAL) AS MIN_SALARY,
       SUM(COMM) AS TOTAL_COMMISSION,
       MIN(COMM) AS MIN_COMMISSION,
       MAX(COMM) AS MAX_COMMISSION,
       ROUND(AVG(COMM),2) AS AVERAGE_COMMISSION,
       ROUND(AVG(SAL),2) AS AVERAGE_SALARY,
       COUNT(*) AS TOTAL_EMPLOYEES
FROM EMP;
