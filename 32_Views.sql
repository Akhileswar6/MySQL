USE college;

-- VIEW is a virtual table in SQL
CREATE VIEW student_view AS
SELECT name, email, city 
FROM students
WHERE age > 20;


-- Updating a View
CREATE OR REPLACE VIEW student_view AS
SELECT name, email, city, age
FROM students
WHERE age >= 18;

SELECT * FROM student_view;


-- Showing all Views
SHOW FULL TABLES IN college WHERE TABLE_TYPE LIKE 'VIEW';

-- Dropping a View
DROP VIEW student_view;


