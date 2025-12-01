USE college;

-- A FOREIGN KEY is used to link two tables and maintain referential integrity.

-- Example 1
CREATE TABLE student1(
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    branch VARCHAR(50)
);


-- Inserting into table student1
INSERT INTO student1 VALUES 
(11,"Vivek","Aritificial Intelligence"),
(12,"Gagan","Cyber Security"),
(13,"Yadav","Information Technology"),
(14,"Ganesh","Mechanical"),
(15,"Akhil","Civil");


SELECT * FROM student1;


CREATE TABLE library(
    book_id INT PRIMARY KEY,
    title VARCHAR(50),
    author VARCHAR(50),
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES student1(student_id)
);

-- Inserting into table library
-- If we try to insert "student_id" which is not in "student1" table then it show error
INSERT INTO library VALUES
(1,"Java","John",12),
(2,"Python","Micheal",11);


SELECT * FROM library;




-- Example 2
CREATE TABLE departments(
    dept_id INT PRIMARY KEY,
    name VARCHAR(50)
);


INSERT INTO departments VALUES
(12,"Computer Science Engineering"),
(13,"Cyber Security"),
(14,"Mechanical");


CREATE TABLE student2(
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);


-- When we try to enter "dept_id" which is not in "departments" table, that record will not be taken
INSERT INTO student2 VALUES
(1,"Rahul",14),
(2,"Ashish",14),
(3,"Kamal",12),
(4,"Vikrant",13);


SELECT * FROM student2;