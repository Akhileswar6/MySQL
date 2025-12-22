-- Left join (LEFT OUTER JOIN) -> Return all records from left table and matching records from right table

SELECT *
FROM employees
LEFT JOIN department
ON employees.dept_id = department.dept_id;

-- Example with specific columns
SELECT employees.emp_name, department.dept_name
FROM employees
LEFT JOIN department
ON employees.dept_id = department.dept_id;


-- Another example with filtering
SELECT *
FROM employees
LEFT JOIN department
ON employees.dept_id = department.dept_id
WHERE department.dept_name = "HR";


