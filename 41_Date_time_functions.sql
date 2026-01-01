-- MySQL provides many built-in functions to work with dates, times, timestamps, intervals, and formatting.

-- | Function        | Description                            | Example                                                                  
-- | --------------- | -------------------------------------- | ---------------------------------------                                  
-- | NOW()           | Current date and time                  | NOW()                                                                    
-- | CURDATE()       | Current date                           | CURDATE()                                                                
-- | CURTIME()       | Current time                           | CURTIME()                                                                
-- | DATE()          | Extract date from datetime             | DATE('2024-06-15 14:30:00') = '2024-06-15' 
-- | TIME()          | Extract time from datetime             | TIME('2024-06-15 14:30:00') = '14:30:00'
-- | DATE_ADD()      | Add interval to date                   | DATE_ADD('2024-06-15', INTERVAL 10 DAY) = '2024-06-25' 
-- | DATE_SUB()      | Subtract interval from date            | DATE_SUB('2024-06-15', INTERVAL 5 DAY) = '2024-06-10' 
-- | DATEDIFF()      | Difference between two dates           | DATEDIFF('2024-06-15', '2024-06-10') = 5 
-- | TIMEDIFF()      | Difference between two times           | TIMEDIFF('14:30:00', '12:15:00') = '02:15:00' 
-- | DATE_FORMAT()   | Format date according to format string | DATE_FORMAT('2024-06-15', '%W, %M %d, %Y') = 'Saturday, June 15, 2024' 
-- | TIME_FORMAT()   | Format time according to format string | TIME_FORMAT('14:30:00', '%H:%i %p') = '02:30 PM' 
-- | STR_TO_DATE()   | Convert string to date                 | STR_TO_DATE('15-06-2024', '%d-%m-%Y') = '2024-06-15' 
-- | UNIX_TIMESTAMP()| Convert date to Unix timestamp         | UNIX_TIMESTAMP('2024-06-15 14:30:00') = 1718381400 
-- | FROM_UNIXTIME() | Convert Unix timestamp to date         | FROM_UNIXTIME(1718381400) = '2024-06-15 14:30:00' 


-- CURRENT_DATE() / CURDATE()
SELECT CURDATE();
SELECT DATE(NOW());


-- CURRENT_TIME() / CURTIME()
SELECT CURTIME();
SELECT TIME(NOW());


-- NOW() / CURRENT_TIMESTAMP()
SELECT NOW();
SELECT CURRENT_TIMESTAMP();



-- EXTRACTING PARTS OF DATE/TIME
-- YEAR()
SELECT YEAR(NOW());
SELECT YEAR('2024-06-15');


-- MONTH()
SELECT MONTH(NOW());
SELECT MONTH('2024-06-15');


-- DAY()
SELECT DAY(NOW());
SELECT DAY('2024-06-15');


-- HOUR()
SELECT HOUR(NOW()); 
SELECT HOUR('14:30:00');


-- MINUTE()
SELECT MINUTE(NOW());
SELECT MINUTE('14:30:00');


-- SECOND()
SELECT SECOND(NOW());
SELECT SECOND('14:30:45');



-- DATE ADDITION & SUBTRACTION
-- DATE_ADD()
SELECT DATE_ADD('2024-06-15', INTERVAL 10 DAY);

-- DATE_SUB()
SELECT DATE_SUB('2024-06-15', INTERVAL 5 DAY);

-- DATEDIFF()
SELECT DATEDIFF('2024-06-15', '2024-06-10');

-- TIMEDIFF()
SELECT TIMEDIFF('14:30:00', '12:15:00');

-- FORMATTING DATES & TIMES
-- DATE_FORMAT()
SELECT DATE_FORMAT('2024-06-15', '%W, %M %d, %Y');

-- TIME_FORMAT()
SELECT TIME_FORMAT('14:30:00', '%H:%i %p');

