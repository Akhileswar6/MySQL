-- Transaction in mysql is a group of SQL statements that are executed as a single unit of work.
-- Transactions ensure data integrity and consistency by following the ACID properties: Atomicity, Consistency, Isolation, Durability.

-- Atomicity → all operations within the transaction are completed successfully or none are applied
-- Consistency → data remains in a valid state before and after the transaction
-- Isolation → concurrent transactions do not interfere with each other
-- Durability → once a transaction is committed, the changes are permanent


-- Basic Transaction Commands:
-- START TRANSACTION -> This command is used to begin a new transaction.
-- COMMIT -> This command is used to save all the changes made during the current transaction.
-- ROLLBACK -> This command is used to undo all the changes made during the current transaction.
-- SAVEPOINT -> This allows you to set a check point within a transaction to which you can later roll back if needed.


-- Example of a basic transaction:
START TRANSACTION;

INSERT INTO accounts(id, balance) VALUES (1, 500);
INSERT INTO accounts(id, balance) VALUES (2, 700);

SAVEPOINT sp1;

UPDATE accounts SET balance = balance - 200 WHERE id = 1;

-- Oops something wrong
ROLLBACK TO sp1;

COMMIT;
