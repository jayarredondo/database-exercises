USE employees;

# All employees with the same hire date as employee 101010
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE hire_date = (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );

# All titles held by all employees named Aamod.
SELECT title FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    );

# The unique titles held by all employees named Aamod.
SELECT title FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    ) GROUP BY title;

# All the current department managers that are female.
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date LIKE '9999%'
    )
AND gender = 'F';