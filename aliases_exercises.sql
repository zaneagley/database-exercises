USE employees;
SELECT CONCAT(emp_no,' - ',last_name, ', ', first_name) AS full_name, CONCAT(birth_date) AS DOB
FROM employees
ORDER BY full_name
LIMIT 10;