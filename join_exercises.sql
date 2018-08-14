USE employees;
--SELECT * FROM employees as A JOIN titles AS B;


-- SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
-- FROM employees as e
-- JOIN dept_emp as de
--   ON de.emp_no = e.emp_no
-- JOIN departments as d
--   ON d.dept_no = de.dept_no
-- WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

-- Question 2 of Join

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, CONCAT(dept_name) as Department_Name
FROM employees as e
JOIN dept_emp as de
ON de.emp_no = e.emp_no
JOIN departments as dept
ON de.dept_no = dept.dept_no
JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' ORDER BY Department_Name;

-- Question 3 of Join

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, CONCAT(dept_name) as Department_Name
FROM employees as e
JOIN dept_emp as de
ON de.emp_no = e.emp_no
JOIN departments as dept
ON de.dept_no = dept.dept_no
JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND gender = 'F' ORDER BY Department_Name;

-- Question 4 of Join

SELECT DISTINCT title, COUNT(*)
FROM employees as e
JOIN dept_emp as de
ON de.emp_no = e.emp_no
JOIN departments as dept
ON de.dept_no = dept.dept_no
JOIN titles as t
ON t.emp_no = e.emp_no
WHERE t.to_date = '9999-01-01' AND dept.dept_no = 'd009' GROUP BY title ORDER BY title;

-- Question 5 of Join

SELECT DISTINCT CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, dept_name as Department_Name, salary as Salary
FROM employees as e
JOIN dept_emp as de
ON de.emp_no = e.emp_no
JOIN departments as dept
ON de.dept_no = dept.dept_no
JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
JOIN salaries as s
ON s.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01' ORDER BY Department_Name;
