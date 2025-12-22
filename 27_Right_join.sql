-- RIGHT JOIN -> Return all the rows from right table and matching rows from left table

SELECT *
FROM employees
RIGHT JOIN department
ON employees.dept_id = department.dept_id;

-- Example with specific columns
SELECT department.dept_name, employees.emp_name
FROM employees
RIGHT JOIN department
ON employees.dept_id = department.dept_id;


-- Another example with filtering
SELECT *
FROM employees
RIGHT JOIN department
ON employees.dept_id = department.dept_id
WHERE department.dept_name = "Sales";