USE college;

-- UPDATE query is used to update the existing data in the table
UPDATE students SET city = "Mumbai" WHERE student_id = 3;
UPDATE students SET email = "kumar@gmail.com" WHERE student_id = 3;

UPDATE students SET age = 25 WHERE name = "Bob Smith";


-- Update Multiple Rows
UPDATE students SET age = 19 WHERE age <= 20;


-- Updating multiple columns
UPDATE students SET age = 24,
                    name = "Sriram"
                    WHERE student_id = 6;


-- Increasing age by 1
UPDATE students SET age = age + 1;

SELECT * FROM students;




-- Scenario Based:

-- 1. Increase the salary of all employees in the "IT" department by 10% who are earning less than 50000.
UPDATE employees
SET salary = salary * 1.10
WHERE dept = "IT" AND salary < 50000;

-- 2. Mark all products as "Out of Stock" where the quantity is 0.
UPDATE product
SET status = "Out of Stock"
WHERE quantity = 0;

-- 3. Update the grade to "A" for all students who have scored more than 90 marks.
UPDATE student
SET grade = "A"
WHERE score > 90;

-- 4. Change the email domain from "gamil.com" to "gmail.com" for all users in the "users" table.
UPDATE users
SET email = REPLACE(email, "@gamil.com", "@gmail.com")
WHERE email LIKE "%@gamil.com";

-- 5. Accounts that have not logged in for the last 1 year should be updated to set their status to "inactive".
UPDATE accounts
SET status = "inactive",
    inactive_date = CURDATE()
WHERE last_login < DATE_SUB(CURDATE(), INTERVAL 1 YEAR);    

-- 6. Order status should be updated to "Processing" for all orders where the payment status is "Paid".
UPDATE orders
SET order_status = "Processing"
WHERE payment_status = "Paid";

-- 7. Update the price of all products in the "Electronics" category by increasing it by 500.
UPDATE products
SET price = price + 500
WHERE category = "Electronics";

-- 8. Change the city name to uppercase for all customers in the "customers" table.
UPDATE customers
SET city = UPPER(city);

-- 9. Update the manager_id to 202 for all employees who report to manager_id 101.
UPDATE employees
SET manager_id = 202
WHERE manager_id = 101;

-- 10. Set the discount to 0 for all coupons that have expired (expiry_date before the current date).
UPDATE coupons
SET discount = 0
WHERE expiry_date < CURDATE();
