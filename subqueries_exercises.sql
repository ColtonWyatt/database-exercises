SELECT * FROM employees
WHERE hire_date IN(
    SELECT hire_date
    FROM employees WHERE emp_no =101010)

SELECT  DISTINCT title
FROM titles
WHERE emp_no IN(
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod')

SELECT first_name, last_name
FROM employees
WHERE emp_no IN(
    SELECT emp_no
    FROM dept_manager WHERE to_date = '9999-01-01')
  AND gender = 'F'

SELECT d.dept_name
FROM departments d
WHERE d.dept_no IN
      (SELECT dm.dept_no
       FROM dept_manager dm
                JOIN employees e on dm.emp_no = e.emp_no
       WHERE dm.to_date = '9999-01-01' AND e.gender = 'F')

SELECT e.first_name, e.last_name
FROM employees e
WHERE e.emp_no =
      (SELECT s.emp_no
       FROM salaries s
       ORDER BY salary DESC
    LIMIT 1)