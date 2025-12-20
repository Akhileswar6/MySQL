USE college;

-- Wildcards are characters used in pattern matching inside a LIKE condition.

--  % → Matches any number of characters
SELECT * FROM students WHERE name LIKE 'A%';      -- starts with A
SELECT * FROM students WHERE name LIKE '%h';      -- ends with h
SELECT * FROM students WHERE name LIKE '%na%';    -- contains na in "name"


-- _ → Matches exactly one character
SELECT * FROM students WHERE name LIKE '_a%';        -- second letter is 'a'
SELECT * FROM students WHERE name LIKE '_____';      -- names with exactly 5 letter




