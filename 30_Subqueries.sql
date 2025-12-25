-- Subquery is a query inside another query. Subqueries can be used in various places within a SQL statement, such as in the SELECT, FROM, WHERE, or HAVING clauses.
-- They allow you to perform operations that require multiple steps of data retrieval.

-- Example 1: Using a subquery in the WHERE clause
SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
)
-- This query retrieves the names and salaries of employees whose salary is greater than the average salary of all employees.


-- Example 2: Subquery with IN operator
SELECT name
FROM students
WHERE dept_id IN (
    SELECT dept_id
    FROM departments
    WHERE dept_name = 'Computer Science'
)
-- This query retrieves the names of students who are in the 'Computer Science' department.


-- Example 3: Subquery in the SELECT clause
SELECT name,
       salary,
       (SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees;
-- This query retrieves the names and salaries of employees along with the average salary of all employees as a separate column.
