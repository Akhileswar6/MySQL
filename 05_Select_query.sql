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
