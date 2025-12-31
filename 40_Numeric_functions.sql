-- Numeric functions are used to perform mathematical operations in SQL queries.

-- | Function   | Description     | Example                  |
-- | ---------- | --------------- | ------------------------ |
-- | ABS()      | Absolute value  | ABS(-10) = 10            |
-- | CEIL()     | Round up        | CEIL(4.1) = 5            |
-- | FLOOR()    | Round down      | FLOOR(4.9) = 4           |
-- | ROUND()    | Normal rounding | ROUND(4.7) = 5           |
-- | TRUNCATE() | Cut decimals    | TRUNCATE(5.678,2) = 5.67 |
-- | MOD()      | Remainder       | MOD(17,5) = 2            |
-- | POWER()    | Exponent        | POWER(2,3) = 8           |
-- | SQRT()     | Square root     | SQRT(25) = 5             |
-- | GREATEST() | Largest         | GREATEST(1,9,3)=9        |
-- | LEAST()    | Smallest        | LEAST(1,9,3)=1           |
-- | RAND()     | Random          | RAND() = 0.xxxx          |
-- | SIGN()     | Number sign     | SIGN(-5) = -1            |
-- | PI()       | Pi constant     | PI()                     |
-- | EXP()      | e^n             | EXP(1)                   |


SELECT ABS(-234);     -- 234

SELECT CEIL(4.1);        -- 5
SELECT CEILING(4.02);    --5

SELECT FLOOR(4.9);     --4

SELECT ROUND(4.7);     --5

SELECT TRUNCATE(5.678,2);    --5.67

SELECT MOD(17,5);     --2
SELECT 17 % 5;       --2

SELECT POWER(2,3);      -- 8
SELECT POW(5,4);        -- 625
SELECT SQRT(25);       -- 5

SELECT GREATEST(10, 20, 5);  -- 20
SELECT LEAST(10, 20, 5);     -- 5

SELECT RAND() AS random;         -- Random number between 0 and 1
SELECT RAND(10);              -- Random number with seed 10

SELECT PI() AS PI_value;      -- 3.141593


