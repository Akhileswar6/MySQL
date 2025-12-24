-- UNION (Removes duplicates) -> Automatically removes duplicate rows and gives all the selected records from table, Performs sorting to eliminate duplicates.

SELECT name FROM final_students
UNION
SELECT name FROM alumini;


-- UNION ALL (Keeps duplicates) -> Doesn't remove duplicates and gives all the records from the table.
SELECT name FROM final_students
UNION ALL
SELECT name FROM alumini;


-- Selecting multiple columns
SELECT name,stu_id FROM final_students
UNION ALL
SELECT name,company FROM alumini;