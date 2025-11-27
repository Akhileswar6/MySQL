USE college;

-- UPDATE query is used to update the existing data in the table
UPDATE students SET city = "Mumbai" WHERE student_id = 3;
UPDATE students SET email = "kumar@gmail.com" WHERE student_id = 3;

UPDATE students SET age = 25 WHERE name = "Bob Smith";


-- Update Multiple Rows
UPDATE students SET age = 19 WHERE age <= 20;


-- Updating multiple columns
UPDATE students SET age = 24,
                    name = "Sriram"
                    WHERE student_id = 6;


-- Increasing age by 1
UPDATE students SET age = age + 1;

SELECT * FROM students;