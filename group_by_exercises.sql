SELECT DISTINCT title
FROM titles;

SELECT first_name, last_name, emp_no
FROM employees
WHERE last_name Like '%E%' ORDER BY emp_no;

SELECT first_name, last_name, emp_no
FROM employees
WHERE last_name Like '%E%' ORDER BY emp_no DESC;

SELECT * FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
GROUP BY last_name;

SELECT * FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
GROUP BY last_name, first_name;

SELECT * FROM employees
WHERE last_name LIKE '%q%' AND NOT last_name LIKE'%qu%'
GROUP BY last_name;

SELECT last_name, Count(last_name)
FROM employees
WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%'
GROUP BY (last_name)

SELECT gender, COUNT(*)
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya'
GROUP BY (gender)


