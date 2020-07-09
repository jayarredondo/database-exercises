USE employees;

SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e' ORDER BY emp_no DESC;

SELECT *, CONCAT('Days at company: ', DATEDIFF(NOW(), hire_date))
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date desc;