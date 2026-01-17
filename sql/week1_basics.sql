-- =========================
-- Week 1 -Day 1: SQL Basics
-- =========================

-- افترض وجود جدول اسمه employees بالأعمدة:
-- id, first_name, last_name, department, salary, hire_date

-- 1) SELECT: جلب كل الأعمدة
SELECT * FROM employees;

-- 2) SELECT أعمدة محددة
SELECT first_name, last_name, department FROM employees;

-- 3) WHERE: فلترة النتائج
SELECT *
FROM employees
WHERE department = 'Engineering';

-- 4) WHERE مع شروط رقمية
SELECT first_name, salary
FROM employees
WHERE salary > 7000;

-- 5) WHERE مع AND / OR
SELECT first_name, department, salary
FROM employees
WHERE department = 'Engineering'
  AND salary >= 8000;

-- 6) ORDER BY: ترتيب النتائج
SELECT first_name, salary
FROM employees
ORDER BY salary DESC;

-- 7) ORDER BY بأكثر من عمود
SELECT first_name, department, salary
FROM employees
ORDER BY department ASC, salary DESC;

-- 8) LIMIT: تحديد عدد الصفوف
SELECT *
FROM employees
ORDER BY hire_date DESC
LIMIT 5;

-- 9) تمرين: أعلى 3 رواتب في قسم Sales
SELECT first_name, last_name, salary
FROM employees
WHERE department = 'Sales'
ORDER BY salary DESC
LIMIT 3;

-- 10) تمرين: الموظفون الذين رواتبهم بين 6000 و 9000
SELECT first_name, salary
FROM employees
WHERE salary BETWEEN 6000 AND 9000
ORDER BY salary;
