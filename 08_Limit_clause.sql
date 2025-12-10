USE college;


-- LIMIT clause examines the limit of records
SELECT * FROM students LIMIT 2;

SELECT * FROM students LIMIT 3 OFFSET 2;

SELECT name, city FROM students LIMIT 4;