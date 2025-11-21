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



-- Creating employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT
);

-- Creating departments table
CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);




CREATE TABLE final_students (
    stu_id INT PRIMARY KEY,
    name VARCHAR(50),
    branch VARCHAR(50)
);


CREATE TABLE alumini (
    name VARCHAR(50),
    company VARCHAR(50)
);


