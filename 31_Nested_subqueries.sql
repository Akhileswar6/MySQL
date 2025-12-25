-- Nested subquery means a subquery inside another subquery.
-- Example Structure:
SELECT ...
FROM table
WHERE column = (
    SELECT ...
    FROM table
    WHERE column = (
        SELECT ...
    )
);

-- Example 1: Get employees who earn more than the salary of the person who has the lowest salary in the company
SELECT name, salary
FROM employees
WHERE salary > (
    SELECT salary
    FROM employees
    WHERE salary = (
        SELECT MIN(salary)
        FROM employees
    )
);
-- This query retrieves the names and salaries of employees whose salary is greater than the lowest salary in the company.


-- Example 2: Students scoring above the class average and class average computed from students above 30 marks
SELECT name, marks
FROM students
WHERE marks > (
    SELECT AVG(marks)
    FROM students
    WHERE marks > (
        SELECT AVG(marks)
        FROM students
    )
);
-- This query retrieves the names and marks of students who scored above the average marks of students who themselves scored above the overall average marks.


-- Example 3: Find products with price higher than the category’s minimum price
SELECT name, price
FROM products p
WHERE price > (
    SELECT MIN(price)
    FROM products
    WHERE category = (
        SELECT category
        FROM products
        WHERE id = 5
    )
);
-- This query retrieves the names and prices of products that are priced higher than the minimum price of the category to which the product with id 5 belongs.
