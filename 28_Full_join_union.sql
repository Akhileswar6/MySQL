-- FULL OUTER JOIN -> Returns all the rows from both tables and matching when possible

SELECT *
FROM employees
LEFT JOIN department
ON employees.emp_id = department.dept_id
UNION
SELECT *
FROM employees
RIGHT JOIN department
ON employees.dept_id = department.dept_id;


-- Example with specific columns
SELECT employees.emp_name, department.dept_name
FROM employees
LEFT JOIN department
ON employees.emp_id = department.dept_id
UNION
SELECT employees.emp_name, department.dept_name
FROM employees
RIGHT JOIN department
ON employees.dept_id = department.dept_id;