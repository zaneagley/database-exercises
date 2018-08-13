USE employees;

--SELECT * FROM EMPLOYEES WHERE ((first_name ="Irena" OR first_name ="Vidya" OR first_name="Maya") AND gender = "M");

--SELECT * FROM EMPLOYEES WHERE first_name IN = ('Irena', 'Vidya', 'Maya');

--SELECT * FROM EMPLOYEES WHERE last_name LIKE 'e%';

--SELECT * FROM EMPLOYEES WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

--SELECT * FROM EMPLOYEES WHERE birth_date LIKE '%12-25';

--SELECT * FROM EMPLOYEES WHERE hire_date BETWEEN '1990-01-01' AND '2000-01-01' AND birth_date LIKE '%12-25';

SELECT * FROM EMPLOYEES WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';