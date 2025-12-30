-- SavePoint -> This allows you to set a point within a transaction to which you can later roll back if needed.
-- This is useful for managing complex transactions where you may want to undo certain parts without rolling back the entire transaction.
-- A SAVEPOINT allows you to undo only the last part of a transaction, not the entire transaction.

-- full example:
-- step 1: Begin transaction
START TRANSACTION;

-- Step 2: Insert some data
INSERT INTO alumini (name, company) VALUES ("Rohit", "Amazon");

-- Step 3: Create savepoint
SAVEPOINT sp1;

-- Step 4: Do more operations
INSERT INTO alumini (name, company) VALUES ("Sneha", "Microsoft");

-- Step 5: Rollback only the last insert
ROLLBACK TO SAVEPOINT sp1;

-- Step 6: Commit the transaction
COMMIT;


SELECT * FROM alumini;



-- RELEASE SAVEPOINT -> Deletes the savepoint.
RELEASE SAVEPOINT sp1;
