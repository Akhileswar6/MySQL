USE college;

-- HAVING clause is used to filter records that work on aggregated data.
-- It is used in conjunction with the GROUP BY clause.

SELECT city, COUNT(*) AS student_count
FROM students
GROUP BY city
HAVING COUNT(*) > 1;


SELECT subject, AVG(marks) AS average_marks
FROM students
GROUP BY subject
HAVING AVG(marks) > 75;


SELECT dept_name, SUM(salary) AS dept_salary
FROM salary
GROUP BY dept_name
HAVING SŪM(salary) > 50000;


SELECT product, SUM(quantity) AS total_sales
FROM sales
GROUP BY product
HAVING SUM(quantity) > 100;



-- When to use WHERE vs HAVING

-- | Clause     | Used For                  | Works On |
-- | ---------- | ------------------------- | -------- |
-- | **WHERE**  | Filtering before grouping | Rows     |
-- | **HAVING** | Filtering after grouping  | Groups   |

SELECT city, COUNT(*)
FROM students
WHERE age > 18         -- filters ROWS
GROUP BY city
HAVING COUNT(*) > 2;   -- filters GROUPS


