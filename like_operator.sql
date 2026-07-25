-- ==========================================================
-- Topic : LIKE Operator
-- Database : Oracle SQL (EMP Table)
-- ==========================================================

-- 1. Display details of employees whose name starts with 'M'.

SELECT *
FROM EMP
WHERE ENAME LIKE 'M%';

------------------------------------------------------------

-- 2. Display details of employees whose name ends with 'N'.

SELECT *
FROM EMP
WHERE ENAME LIKE '%N';

------------------------------------------------------------

-- 3. Display details of employees whose name starts with 'A' and ends with 'N'.

SELECT *
FROM EMP
WHERE ENAME LIKE 'A%N';

------------------------------------------------------------

-- 4. Display details of employees whose name has exactly 4 characters.

SELECT *
FROM EMP
WHERE ENAME LIKE '____';

------------------------------------------------------------

-- 5. Display details of employees whose salary has exactly 3 digits.

SELECT *
FROM EMP
WHERE SAL LIKE '___';

------------------------------------------------------------

-- 6. Display details of employees whose job starts with 'S' and ends with 'N'.

SELECT *
FROM EMP
WHERE JOB LIKE 'S%N';

------------------------------------------------------------

-- 7. Display details of employees whose second character in the name is 'L'.

SELECT *
FROM EMP
WHERE ENAME LIKE '_L%';

------------------------------------------------------------

-- 8. Display details of employees earning a 4-digit commission.

SELECT *
FROM EMP
WHERE COMM LIKE '____';

------------------------------------------------------------

-- 9. Display details of employees whose:
--    Job starts with 'M' and ends with 'N'
--    Salary has exactly 4 digits
--    Name starts with 'B' or ends with 'K'

SELECT *
FROM EMP
WHERE JOB LIKE 'M%N'
AND SAL LIKE '____'
AND (ENAME LIKE 'B%' OR ENAME LIKE '%K');

------------------------------------------------------------

-- 10. Display details of employees whose:
--     Name starts with 'J' and ends with 'S'
--     Job starts with 'M' or ends with 'K'
--     Salary is greater than 2000
--     Commission is NULL
--     Have a manager

SELECT *
FROM EMP
WHERE ENAME LIKE 'J%S'
AND (JOB LIKE 'M%' OR JOB LIKE '%K')
AND SAL > 2000
AND COMM IS NULL
AND MGR IS NOT NULL;
