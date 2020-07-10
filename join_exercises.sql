USE employees;

# write a query that shows each department along with the name of the current manager for that department.
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name)
AS 'Department Manager'
FROM departments
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date = '9999-01-01' ORDER BY `Department Name`;

# Find the name of all departments currently managed by women.
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name)
AS 'Manager Name'
FROM departments
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE employees.gender = 'F' AND dept_manager.to_date = '9999-01-01'
ORDER BY dept_name;

# Find the current titles of employees currently working in the Customer Service department.
SELECT titles.title AS 'Title', COUNT(*) AS 'Count'
FROM titles
JOIN dept_emp ON titles.emp_no = dept_emp.emp_no
JOIN departments on dept_emp.dept_no = departments.dept_no
WHERE titles.to_date = '9999-01-01' AND departments.dept_name = 'Customer Service'
AND dept_emp.to_date = '9999-01-01'
GROUP BY title;

# Find the current salary of all current managers.
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name), salaries.salary
AS 'Department Manager'
FROM departments
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE salaries.to_date = '9999-01-01'
AND dept_manager.to_date = '9999-01-01'
ORDER BY `Department Name`;