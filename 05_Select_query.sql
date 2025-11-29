USE college;

-- SELECT queries to retrieve data from the students table
-- Basic SELECT queries
SELECT * FROM students;

SELECT name, email FROM students;

SELECT student_id, name, email FROM students;


SELECT * FROM students
WHERE age > 20;


SELECT name FROM students
WHERE city = 'Hyderabad';


SELECT name from students
WHERE city = "mumbai" OR age > 22;


SELECT * FROM students
WHERE age > 20 AND city = 'Hyderabad';


SELECT name from students
WHERE age BETWEEN 20 AND 30;


SELECT name AS student_name, city AS location
FROM students;



-- Scenario Based:
SELECT name, salary FROM employees 
WHERE salary > 50000;


SELECT * FROM products 
WHERE category = "Electronics";

SELECT *  FROM students
ORDER BY score DESC
LIMIT 5;

SELECT COUNT(*) AS total_students
FROM orders;

SELECT customer_name, email
FROM customers
WHERE city IN ("Chennai","Bangalore");

SELECT DISTINCT category
FROM products;


SELECT dept, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept;


SELECT * 
FROM users
WHERE last_login >= DATE_SUB(CURDATE(), INTERVAL 7 DAY);


SELECT product_name, quantity
FROM products
WHERE quantity < 10;
