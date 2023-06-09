SELECT departments.dept_name AS 'Department', CONCAT (employees.first_name, ' ', employees.last_name) AS
'dept_manager'
FROM departments
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date = '9999-01-01'

SELECT departments.dept_name AS 'Department', CONCAT (employees.first_name, ' ', employees.last_name) AS
'dept_manager'
FROM departments
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date = '9999-01-01' AND employees.gender = 'F'

SELECT titles.title AS 'title', COUNT(*) AS 'total'
FROM departments
JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
JOIN titles ON titles.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Customer Service' AND titles.to_date = '9999-01-01' AND dept_emp.to_date ='9999-01-01'
GROUP BY Title
ORDER BY total DESC;

SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Dept_manager'
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON employees.emp_no = dept_manager.emp_no
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date LIKE '9999%' AND salaries.to_date LIKE '9999%'

SELECT concat(e.first_name, ' ', e.last_name) as Employees
, d.dept_name as Department
, concat(e2.first_name, ' ', e2.last_name) as Manager from dept_emp de
FROM dept_emp de
JOIN employees as e on de.emp_no = e.emp_no
JOIN departments as d on de.dept_no = d.dept_no
JOIN dept_manager dm on dm.dept_no = d.dept_no AND dm.to_date = '9999-01-01'
JOIN employees as e2 on e2.emp_no = dm.emp_no
WHERE de.to_date = '9999-01-01'