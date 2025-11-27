USE students;

-- DELETE query is used to delete the existing record using WHERE clause
DELETE FROM students WHERE name = "Akhil Kumar";

DELETE FROM students WHERE city = "Los Angeles";


-- Delete Multiple Rows
DELETE FROM students WHERE age > 22;

SELECT * FROM students;