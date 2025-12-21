-- Joins are used to combine rows from two or more tables based on a related column.

-- INNER JOIN -> Returns records that have matching values in both tables.

SELECT *
FROM employees
INNER JOIN department 
ON employees.dept_id = department.dept_id;


-- Example with specific columns
SELECT employees.emp_name, department.dept_name
FROM employees
INNER JOIN department
ON employees.dept_id = department.dept_id;


-- Another example with filtering
SELECT employees.emp_name, department.dept_name
FROM employees
INNER JOIN department
ON employees.dept_id = department.dept_id
WHERE department.dept_name = 'Sales';



