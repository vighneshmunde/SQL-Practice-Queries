-- ==========================================================
-- Topic     : Advanced SQL Queries
-- Database  : Oracle SQL (EMP Table)
-- ==========================================================

-- 1. Display employee details of employees hired in the year 1981.

SELECT *
FROM EMP
WHERE EXTRACT(YEAR FROM HIREDATE) = 1981;

------------------------------------------------------------

-- 2. Display employee name, job and salary of employees
--    working as MANAGER, CLERK or SALESMAN,
--    reporting to 7839 or 7566,
--    whose name contains 'A'.

SELECT ENAME,
       JOB,
       SAL
FROM EMP
WHERE JOB IN ('MANAGER','CLERK','SALESMAN')
AND MGR IN (7839,7566)
AND ENAME LIKE '%A%';

------------------------------------------------------------

-- 3. Display all employee details along with annual salary
--    of employees not working in department 10 or 20,
--    earning salary greater than 200 and less than 4500,
--    whose name does not end with 'T'.

SELECT EMP.*,
       SAL * 12 AS ANNUAL_SALARY
FROM EMP
WHERE DEPTNO NOT IN (10,20)
AND SAL BETWEEN 201 AND 4499
AND ENAME NOT LIKE '%T';

------------------------------------------------------------

-- 4. Display employee name, job, salary and salary after
--    12% hike for employees hired before 1990 on
--    Saturday, Monday or Tuesday and earning commission.

SELECT ENAME,
       JOB,
       SAL,
       SAL * 1.12 AS HIKED_SALARY
FROM EMP
WHERE EXTRACT(YEAR FROM HIREDATE) < 1990
AND TO_CHAR(HIREDATE,'DAY') IN ('SATURDAY ','MONDAY   ','TUESDAY  ')
AND COMM IS NOT NULL;

------------------------------------------------------------

-- 5. Display details of employees hired in a leap year.

SELECT *
FROM EMP
WHERE MOD(EXTRACT(YEAR FROM HIREDATE),4)=0;

------------------------------------------------------------

-- 6. Display all employee details with hire day
--    whose name starts with S or M,
--    salary greater than 99,
--    has a manager,
--    not hired on 10th or 12th.

SELECT EMP.*,
       TO_CHAR(HIREDATE,'DAY') AS HIRE_DAY
FROM EMP
WHERE (ENAME LIKE 'S%' OR ENAME LIKE 'M%')
AND SAL > 99
AND MGR IS NOT NULL
AND TO_CHAR(HIREDATE,'DD') NOT IN ('10','12');

------------------------------------------------------------

-- 7. Display total employees in each department
--    whose names do not contain Q, T or H.

SELECT DEPTNO,
       COUNT(*) AS TOTAL_EMPLOYEES
FROM EMP
WHERE ENAME NOT LIKE '%Q%'
AND ENAME NOT LIKE '%T%'
AND ENAME NOT LIKE '%H%'
GROUP BY DEPTNO;

------------------------------------------------------------

-- 8. Display employee name with 'MR.',
--    salary with 'Rs.',
--    hire day,
--    even salary,
--    name length between 3 and 7.

SELECT 'MR. ' || ENAME AS EMPLOYEE_NAME,
       SAL || ' Rs.' AS SALARY,
       TO_CHAR(HIREDATE,'DAY') AS HIRE_DAY
FROM EMP
WHERE MOD(SAL,2)=0
AND LENGTH(ENAME) BETWEEN 3 AND 7;

------------------------------------------------------------

-- 9. Display employee details working as
--    SALESMAN, ANALYST or PRESIDENT,
--    hired in 1981 during DEC, SEP or JUN.

SELECT *
FROM EMP
WHERE JOB IN ('SALESMAN','ANALYST','PRESIDENT')
AND EXTRACT(YEAR FROM HIREDATE)=1981
AND TO_CHAR(HIREDATE,'MON') IN ('DEC','SEP','JUN');

------------------------------------------------------------

-- 10. Display employee number, employee name,
--     job and hire date of employees
--     without a manager,
--     salary ending with 0,
--     job not containing M.

SELECT EMPNO,
       ENAME,
       JOB,
       HIREDATE
FROM EMP
WHERE MGR IS NULL
AND MOD(SAL,10)=0
AND JOB NOT LIKE '%M%';

------------------------------------------------------------

-- 11. Display maximum and minimum salary
--     department wise for employees
--     hired in 1980,1981 or1987.

SELECT DEPTNO,
       MAX(SAL) AS MAX_SALARY,
       MIN(SAL) AS MIN_SALARY
FROM EMP
WHERE EXTRACT(YEAR FROM HIREDATE) IN (1980,1981,1987)
GROUP BY DEPTNO
HAVING MAX(SAL) > 1002;

------------------------------------------------------------

-- 12. Display employee name, hire date and salary
--     excluding employee numbers
--     7890,7632,7711,7432.

SELECT ENAME,
       HIREDATE,
       SAL
FROM EMP
WHERE EMPNO NOT IN (7890,7632,7711,7432)
ORDER BY HIREDATE;

------------------------------------------------------------

-- 13. Display the following output:
--     HELLO SMITH YOUR SALARY IS 800 YOUR JOB IS CLERK
--     JOIN THE COMPANY FROM 17-DEC-80

SELECT 'HELLO ' || ENAME ||
       ' YOUR SALARY IS ' || SAL ||
       ' YOUR JOB IS ' || JOB ||
       ' JOIN THE COMPANY FROM ' ||
       TO_CHAR(HIREDATE,'DD-MON-YY') AS MESSAGE
FROM EMP;

------------------------------------------------------------

-- 14. Display employee names in lowercase
--     hired after 1980,
--     annual commission between 3000 and 55000,
--     excluding names containing TH.

SELECT LOWER(ENAME) AS EMPLOYEE_NAME
FROM EMP
WHERE EXTRACT(YEAR FROM HIREDATE)>1980
AND NVL(COMM,0)*12 BETWEEN 3000 AND 55000
AND ENAME NOT LIKE '%TH%';

------------------------------------------------------------

-- 15. Display total employees in each job
--     where more than 2 employees work,
--     employee name has 5 characters,
--     job length less than 10.

SELECT JOB,
       COUNT(*) AS TOTAL_EMPLOYEES
FROM EMP
WHERE LENGTH(ENAME)=5
AND LENGTH(JOB)<10
GROUP BY JOB
HAVING COUNT(*)>2;
