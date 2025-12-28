-- A trigger is a stored program that automatically runs when a specific event happens on a table.
-- A trigger runs automatically, you do NOT call it manually.

-- 🔹 When do triggers fire?
-- Triggers run when you perform:
-- 1. INSERT
-- 2. UPDATE
-- 3. DELETE

-- And they can fire:
-- BEFORE the action
-- AFTER the action

-- So the 6 types are:
-- BEFORE INSERT
-- AFTER INSERT
-- BEFORE UPDATE
-- AFTER UPDATE
-- BEFORE DELETE
-- AFTER DELETE





-- Creating table for triggers
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL
);


CREATE TABLE user_log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    action VARCHAR(100),
    action_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)

);


CREATE TRIGGER log_user_insert
AFTER INSERT ON users
FOR EACH ROW
BEGIN
    INSERT INTO user_log(user_id,action,action_time)
    VALUES (NEW.id, "User Created", NOW());
END;


-- Testing the trigger by inserting a new user
INSERT INTO users (username, email) VALUES ("akhil", "akhil@gmail.com");
INSERT INTO users (username, email) VALUES ("rohit", "rohit@gmail.com");

SELECT * FROM user_log;




-- Creating a table for trigger
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(50),
    amount DECIMAL(10, 2),
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE orders_log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    deleted_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Creating AFTER DELETE trigger
CREATE TRIGGER log_delete_order
AFTER DELETE ON orders
FOR EACH ROW
BEGIN
    INSERT INTO orders_log(order_id, deleted_at)
    VALUES (OLD.id, NOW());
END;


-- Testing the trigger by deleting an order
INSERT INTO orders (customer_name, amount) VALUES ("Alice", 250.00);
INSERT INTO orders (customer_name, amount) VALUES ("Bob", 150.00);

DELETE FROM orders WHERE id = 1;

SELECT * FROM orders_log;