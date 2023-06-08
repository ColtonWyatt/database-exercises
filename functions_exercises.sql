SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT last_name
FROM  employees
WHERE last_name LIKE 'E%';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT * FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

SELECT * FROM employees
WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya');

SELECT * FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT * FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT * FROM employees
WHERE last_name LIKE '%q%' AND NOT last_name LIKE'%qu%';


SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name ASC;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name ASC, last_name ASC;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name ASC;

SELECT first_name, last_name, emp_no
FROM employees
WHERE last_name Like '%E%' ORDER BY emp_no;

SELECT first_name, last_name, emp_no
FROM employees
WHERE last_name Like '%E%' ORDER BY emp_no DESC;



SELECT CONCAT (first_name, '  ',  last_name)
FROM  employees
WHERE last_name LIKE 'E%';

SELECT *
FROM employees
WHERE month (birth_date) = 12
  AND day (birth_date) = 25

SELECT *
FROM employees
WHERE year (hire_date) BETWEEN 1990 AND 1999
  AND month (birth_date) = 12
  AND day (birth_date) = 25

SELECT *
FROM employees
WHERE year (hire_date) BETWEEN 1990 AND 1999
  AND month (birth_date) = 12
  AND day (birth_date) = 25
ORDER BY birth_date ASC, hire_date DESC;