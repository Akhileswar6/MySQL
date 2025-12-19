USE college;

-- Aggregate functions perform calculations on a group of rows and return a single value.

-- 1. COUNT() - Returns the number of rows that matches a specified criterion.
SELECT COUNT(*) AS total_students FROM students;
SELECT COUNT(*) AS students_above_20 FROM students WHERE age > 20;


-- 2. SUM() - Returns the total sum of a numeric column.
SELECT SUM(age) AS total_age FROM students;
SELECT SUM(age) AS total_age_hyderabad FROM students WHERE city = 'Hyderabad';

-- 3. AVG() - Returns the average value of a numeric column.
SELECT AVG(age) AS average_age FROM students;
SELECT AVG(age) AS average_age_mumbai FROM students WHERE city = 'Mumbai';


-- 4. MIN() - Returns the smallest value of the selected column.
SELECT MIN(age) AS youngest_student FROM students;
SELECT MIN(age) AS youngest_in_chennai FROM students WHERE city = 'Chennai';


-- 5. MAX() - Returns the largest value of the selected column.
SELECT MAX(age) AS oldest_student FROM students;
SELECT MAX(age) AS oldest_in_delhi FROM students WHERE city = 'Delhi';