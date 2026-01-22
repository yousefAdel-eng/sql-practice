-- =========================================================
-- Week 1 - Day 2: Filters (WHERE / ORDER BY / LIMIT / NULL)
-- Database: sql_practice
-- Table: employees
-- =========================================================

-- Q1) Employees with salary > 8000
SELECT *
FROM employees
WHERE salary > 8000;
-- Expected result: 5 rows
-- Ali (9500), Sara (8800), Yara (9100), Khaled (8300), Lina (8200)


-- Q2) Employees from Engineering
SELECT *
FROM employees
WHERE department = 'Engineering';
-- Expected result: 3 rows
-- Ali, Noor, Lina


-- Q3) Employees ordered by salary (highest first)
SELECT id, first_name, last_name, department, salary
FROM employees
ORDER BY salary DESC;
-- Expected result: 10 rows
-- Top 3 should be:
-- 1) Ali  9500
-- 2) Yara 9100
-- 3) Sara 8800


-- Q4) Top 3 highest paid employees
SELECT id, first_name, last_name, department, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;
-- Expected result: 3 rows
-- Ali (9500), Yara (9100), Sara (8800)


-- Q5) Employees in Sales AND salary >= 7000
SELECT id, first_name, last_name, department, salary
FROM employees
WHERE department = 'Sales' AND salary >= 7000
ORDER BY salary DESC;
-- Expected result: 2 rows
-- Yara (9100), Omar (7200)


-- Q6) Employees in (Engineering, Data)
SELECT id, first_name, last_name, department
FROM employees
WHERE department IN ('Engineering', 'Data')
ORDER BY department, id;
-- Expected result: 5 rows
-- Engineering: Ali, Noor, Lina
-- Data: Sara, Hani


-- Q7) Employees hired in 2024 (date range)
SELECT id, first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY hire_date;
-- Expected result: 2 rows
-- Ali (2024-02-10), Yara (2024-06-05)


-- Q8) Employees with missing email (NULL)
SELECT id, first_name, last_name, email
FROM employees
WHERE email IS NULL
ORDER BY id;
-- Expected result: 3 rows
-- Omar, Khaled, Lina


-- Q9) Employees with company email domain (ends with @company.com)
SELECT id, first_name, last_name, email
FROM employees
WHERE email LIKE '%@company.com'
ORDER BY id;
-- Expected result: 2 rows
-- Mona (mona.ahmed@company.com), Noor (noor.salman@company.com)


-- Q10) Employees NOT in HR
SELECT id, first_name, last_name, department
FROM employees
WHERE department <> 'HR'
ORDER BY department, id;
-- Expected result: 9 rows
-- Everyone except Mona (HR)

-- =========================================================
-- End of Day 2
-- =========================================================
