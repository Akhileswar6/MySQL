-- GRANT is used to give privileges/permissions to a user in MySQL.

-- Create a user
CREATE USER 'test_user'@'localhost' IDENTIFIED BY 'password123';

-- Granting SELECT and INSERT privileges on a specific database
GRANT SELECT, INSERT ON college.students TO 'test_user'@'localhost';


-- Granting ALL privileges on a specific table
GRANT ALL PRIVILEGES ON college.* TO 'test_user'@'localhost';


-- Granting ALL privileges on all databases
GRANT ALL PRIVILEGES ON *.* TO 'test_user'@'localhost';

-- Apply the changes
FLUSH PRIVILEGES;


-- REVOKE is used to remove privileges/permissions from a user in MySQL.

-- Remove specific privileges
REVOKE INSERT, UPDATE
ON college.students
FROM 'test_user'@'localhost';

-- Remove all privileges
REVOKE ALL PRIVILEGES, GRANT OPTION 
FROM 'test_user'@'localhost';

-- After revoke, run this
FLUSH PRIVILEGES;

-- Dropping the user
DROP USER 'test_user'@'localhost';

-- Check the privileges of a user
SHOW GRANTS FOR 'test_user'@'localhost';