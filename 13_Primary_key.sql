USE college;

-- PRIMARY KEY -> A PRIMARY KEY is a column that uniquely identifies each row in a table.
-- Unique (no duplicate values)
-- NOT NULL (cannot be empty)
CREATE TABLE faculty(
    faculty_id INT PRIMARY KEY,
    name VARCHAR(50),
    contact_no INT
);

CREATE TABLE enrollments(
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id)
)

DESC enrollments;

DESC faculty;