USE employees;

-- SELECT *
-- FROM employees as e
-- WHERE hire_date IN
--   (SELECT hire_date
--   FROM employees
--   WHERE emp_no = '101010');


-- SELECT DISTINCT title, COUNT(*)
-- FROM titles
-- JOIN employees
-- ON employees.emp_no = titles.emp_no
-- WHERE first_name IN
--   (SELECT first_name
--   FROM employees
--   WHERE first_name = 'Aamod')
--   GROUP BY title;

SELECT first_name, last_name
FROM employees as e
JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
WHERE gender IN
  (SELECT gender
  FROM employees
  WHERE gender = 'F')
  AND to_date IN
  (SELECT to_date
  FROM dept_manager
  WHERE to_date = '9999-01-01' )