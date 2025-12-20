USE college;

-- GROUP BY is used to group rows that have the same values in a column.
SELECT city, COUNT(*) AS student_count  
FROM students
GROUP BY city;

Select city, AVG(age) as avg_age
FROM students
GROUP BY city; 

SELECT city, MAX(age) as max_age, MIN(age) as min_age
FROM students
GROUP BY city;

