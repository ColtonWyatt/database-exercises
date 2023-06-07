SELECT first_name
FROM employees
WHERE first_name OR ('Irena', 'Vidya', 'Maya');

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