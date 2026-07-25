-- ==========================================================
-- Topic : Special Operators (IN, NOT IN, BETWEEN,
--         NOT BETWEEN, IS NULL, IS NOT NULL)
-- Database : Oracle SQL (EMP Table)
-- ==========================================================

-- 1. Display employee name and department number of employees
--    working in department 10 or 30.

SELECT ENAME,
       DEPTNO
FROM EMP
WHERE DEPTNO IN (10,30);

------------------------------------------------------------

-- 2. Display employee name and job of employees working as
--    CLERK, MANAGER or SALESMAN.

SELECT ENAME,
       JOB
FROM EMP
WHERE JOB IN ('CLERK','MANAGER','SALESMAN');

------------------------------------------------------------

-- 3. Display employee number, employee name and salary of
--    employees whose employee number is 7902 or 7839 and
--    salary is greater than 2925.

SELECT EMPNO,
       ENAME,
       SAL
FROM EMP
WHERE EMPNO IN (7902,7839)
AND SAL > 2925;

------------------------------------------------------------

-- 4. Display employee name and department number of all
--    employees except those working in department 10 or 40.

SELECT ENAME,
       DEPTNO
FROM EMP
WHERE DEPTNO NOT IN (10,40);

------------------------------------------------------------

-- 5. Display employee name, department number and job of
--    employees working in department 20 but not as CLERK
--    or MANAGER.

SELECT ENAME,
       DEPTNO,
       JOB
FROM EMP
WHERE DEPTNO = 20
AND JOB NOT IN ('CLERK','MANAGER');

------------------------------------------------------------

-- 6. Display employee name and salary of employees earning
--    salary between 1000 and 3000.

SELECT ENAME,
       SAL
FROM EMP
WHERE SAL BETWEEN 1000 AND 3000;

------------------------------------------------------------

-- 7. Display employee name and department number of
--    employees working in department 10 and hired during
--    the year 2019.

SELECT ENAME,
       DEPTNO
FROM EMP
WHERE DEPTNO = 10
AND HIREDATE BETWEEN TO_DATE('01-JAN-2019','DD-MON-YYYY')
                 AND TO_DATE('31-DEC-2019','DD-MON-YYYY');

------------------------------------------------------------

-- 8. Display employee name, salary and hire date of
--    employees hired during 2017 in department 20
--    with salary greater than 2000.

SELECT ENAME,
       SAL,
       HIREDATE
FROM EMP
WHERE DEPTNO = 20
AND SAL > 2000
AND HIREDATE BETWEEN TO_DATE('01-JAN-2017','DD-MON-YYYY')
                 AND TO_DATE('31-DEC-2017','DD-MON-YYYY');

------------------------------------------------------------

-- 9. Display employee name and salary of employees not
--    earning salary between 1000 and 3000.

SELECT ENAME,
       SAL
FROM EMP
WHERE SAL NOT BETWEEN 1000 AND 3000;

------------------------------------------------------------

-- 10. Display employee name and department number of
--     employees working in department 10 and not hired
--     during 2019.

SELECT ENAME,
       DEPTNO
FROM EMP
WHERE DEPTNO = 10
AND HIREDATE NOT BETWEEN TO_DATE('01-JAN-2019','DD-MON-YYYY')
                     AND TO_DATE('31-DEC-2019','DD-MON-YYYY');

------------------------------------------------------------

-- 11. Display employee name, salary and hire date of
--     employees not hired during 2017 in department 20
--     with salary greater than 2000.

SELECT ENAME,
       SAL,
       HIREDATE
FROM EMP
WHERE DEPTNO = 20
AND SAL > 2000
AND HIREDATE NOT BETWEEN TO_DATE('01-JAN-2017','DD-MON-YYYY')
                     AND TO_DATE('31-DEC-2017','DD-MON-YYYY');

------------------------------------------------------------

-- 12. List all employees whose commission is NULL.

SELECT *
FROM EMP
WHERE COMM IS NULL;

------------------------------------------------------------

-- 13. List all employees who don't have a reporting manager.

SELECT *
FROM EMP
WHERE MGR IS NULL;

------------------------------------------------------------

-- 14. List all SALESMEN in department 30.

SELECT *
FROM EMP
WHERE JOB = 'SALESMAN'
AND DEPTNO = 30;

------------------------------------------------------------

-- 15. List all SALESMEN in department 30 having salary
--     greater than 1500.

SELECT *
FROM EMP
WHERE JOB = 'SALESMAN'
AND DEPTNO = 30
AND SAL > 1500;

------------------------------------------------------------

-- 16. List all employees whose name starts with 'S' or 'A'.

SELECT *
FROM EMP
WHERE ENAME LIKE 'S%'
OR ENAME LIKE 'A%';

------------------------------------------------------------

-- 17. List all employees except those working in
--     department 10 and 20.

SELECT *
FROM EMP
WHERE DEPTNO NOT IN (10,20);

------------------------------------------------------------

-- 18. List all employees whose name does not start with 'S'.

SELECT *
FROM EMP
WHERE ENAME NOT LIKE 'S%';

------------------------------------------------------------

-- 19. List all employees having a reporting manager
--     in department 10.

SELECT *
FROM EMP
WHERE MGR IS NOT NULL
AND DEPTNO = 10;

------------------------------------------------------------

-- 20. List all employees whose commission is NULL
--     and working as CLERK.

SELECT *
FROM EMP
WHERE COMM IS NULL
AND JOB = 'CLERK';
