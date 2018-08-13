USE employees;
--SELECT DISTINCT title FROM titles;

--SELECT DISTINCT first_name, last_name FROM EMPLOYEES WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

--SELECT last_name, COUNT(last_name) FROM EMPLOYEES WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name;

SELECT gender, COUNT(*) FROM EMPLOYEES WHERE first_name ="Irena" OR first_name ="Vidya" OR first_name="Maya" GROUP BY gender;
