USE college;

--  1. Arithmetic Operators

-- | Operator | Meaning             | Example            |
-- | -------- | ------------------- | ------------------ |
-- | `+`      | Addition            | `salary + 5000`    |
-- | `-`      | Subtraction         | `salary - 2000`    |
-- | `*`      | Multiplication      | `price * quantity` |
-- | `/`      | Division            | `total / 2`        |
-- | `%`      | Modulus (remainder) | `marks % 2`        |

SELECT student_id, name, age+1 AS details FROM students;


-- 2. Comparison Operators

-- | Operator     | Meaning               |
-- | ------------ | --------------------- |
-- | `=`          | Equal                 |
-- | `!=` or `<>` | Not equal             |
-- | `>`          | Greater than          |
-- | `<`          | Less than             |
-- | `>=`         | Greater than or equal |
-- | `<=`         | Less than or equal    |

SELECT * FROM students WHERE age >= 21;


-- 3. Logical Operators

-- | Operator | Meaning                        |
-- | -------- | ------------------------------ |
-- | `AND`    | Both conditions must be true   |
-- | `OR`     | At least one condition is true |
-- | `NOT`    | Reverses the condition         |

SELECT * FROM students WHERE age >= 20 AND city = "Hyderabad";
SELECT name FROM students WHERE age >= 22 OR city = "Mumbai"


-- 4. BETWEEN Operator
SELECT * FROM students WHERE age BETWEEN 22 AND 30;


-- 5. IN Operator
SELECT * FROM students
WHERE city IN ('Chennai', 'Mumbai', 'Delhi');


-- 6. IS NULL / IS NOT NULL
SELECT * FROM students WHERE email IS NULL;

