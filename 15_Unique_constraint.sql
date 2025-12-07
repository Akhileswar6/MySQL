USE college

-- UNIQUE CONSTRAINT ensures no two rows can have the same value in that column.
CREATE TABLE details(
    id INT PRIMARY KEY,
    email VARCHAR(50) UNIQUE
);

-- No two students can have the same email.
INSERT INTO details VALUES
(12,"sanjay@gmail.com"),
(13,"r@gmail.com");


SELECT * FROM details;