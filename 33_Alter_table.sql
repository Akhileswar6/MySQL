USE college;

-- ALTER TABLE is used to add, delete, or modify columns in an existing table.
-- ✔ Add columns
-- ✔ Drop columns
-- ✔ Modify column datatype
-- ✔ Rename columns
-- ✔ Rename table
-- ✔ Add constraints
-- ✔ Drop constraints


-- 1. Add a New Column
ALTER TABLE students
ADD COLUMN phone VARCHAR(15);

SELECT * FROM students;


-- 2. Add Multiple Columns
ALTER TABLE students
ADD COLUMN (blood_group VARCHAR(10), address VARCHAR(50));


-- 3. Modify Column Datatype
ALTER TABLE students
MODIFY age VARCHAR(3);

ALTER TABLE students
MODIFY age INT;


-- 4. Change Column Name
ALTER TABLE students
CHANGE COLUMN name full_name VARCHAR(50);


-- 5. Drop (Delete) a Column
ALTER TABLE students
DROP COLUMN blood_group;


-- 6. Rename Table
ALTER TABLE cyber_dept
RENAME TO cyber_security;


-- 7. Add Primary Key.
ALTER TABLE students
ADD PRIMARY KEY (student_id);

-- 8. Drop Primary Key
ALTER TABLE students
DROP PRIMARY KEY;

