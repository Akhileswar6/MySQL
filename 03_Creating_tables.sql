-- Using the college database
USE college;

-- Creating the students table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    age INT,
    city VARCHAR(50),
    enrollment_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Describing the structure of the students table
DESC students;



CREATE TABLE sales(
    order_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10, 2)
);

DESC sales;

SHOW TABLES;