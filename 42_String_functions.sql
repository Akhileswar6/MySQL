-- String functions are used to manipulate and process text values.
-- | Function        | Description                          | Example                             |
-- | --------------- | ------------------------------------ | ----------------------------------- | 
-- | CONCAT()        | Concatenate strings                  | CONCAT('Hello', ' ', 'World') = 'Hello World' |
-- | LENGTH()        | Get length of a string               | LENGTH('Hello') =
-- | LOWER()         | Convert string to lowercase          | LOWER('HELLO') = 'hello'           |
-- | UPPER()         | Convert string to uppercase          | UPPER('hello') =
-- | SUBSTRING()     | Extract substring from a string      | SUBSTRING('Hello World', 1, 5) = 'Hello' |
-- | TRIM()          | Remove leading/trailing spaces       | TRIM('  HelloWorld  ') = 'Hello World' |
-- | REPLACE()       | Replace substring with another       | REPLACE('Hello World', 'World', 'SQL') = 'Hello SQL' |
-- | LEFT()          | Extract left part of a string        | LEFT('Hello World', 5) = 'Hello' |
-- | RIGHT()         | Extract right part of a string       | RIGHT('Hello World',
-- | LPAD()          | Pad string on the left               | LPAD('Hello', 10, '*') = '*****Hello' |
-- | RPAD()          | Pad string on the right              | RPAD('Hello',
-- | INSTR()         | Find position of substring          | INSTR('Hello World', 'World') = 7  |
-- | REVERSE()       | Reverse a string                     | REVERSE('Hello') = 'olleH'         |
-- | FORMAT()        | Format number as string              | FORMAT(1234567.89, 2) = '1,234,567.89' |


SELECT LENGTH("Akhil");    -- 5

SELECT CHAR_LENGTH("Akhil")   -- 5

SELECT CONCAT("Hello", " ", "World");   -- Hello World

SELECT SUBSTRING("Hello World", 1, 5);   -- Hello

SELECT LOWER("HELLO");   -- hello

SELECT UPPER("hello");   -- HELLO

SELECT TRIM("   Hello World   ");   -- "Hello World"

SELECT REPLACE("Hello World", "World", "SQL");   -- Hello SQL

SELECT LEFT("Hello", 2);   -- He

SELECT RIGHT("Hello", 2);   -- lo

SELECT LPAD("Akhil", 10, '*');   -- *****Akhil

SELECT RPAD("Akhil", 10, '*');   -- Akhil*****

SELECT INSERT("HelloWorld", 6, 5, " SQL");   -- Hello SQL

SELECT REVERSE('Akhil');       -- lihkA

SELECT POSITION('World' IN 'Hello World');    -- 7

SELECT REPEAT('Hi ', 3);    -- Hi Hi Hi
