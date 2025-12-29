-- COMMIT -> This command is used to save all the changes made during the current transaction.
-- Once a COMMIT is issued, the changes become permanent and visible to other users.

START TRANSACTION;

UPDATE accounts SET balance = balance - 500 WHERE id = 1;
UPDATE accounts SET balance = balance + 500 WHERE id = 2;

COMMIT;



-- ROLLBACK -> This command is used to undo all the changes made during the current transaction.
-- When a ROLLBACK is issued, all changes made since the last COMMIT are discarded.

START TRANSACTION;

UPDATE accounts SET balance = balance - 300 WHERE id = 1;
UPDATE accounts SET balance = balance + 300 WHERE id = 2;

-- something went wrong, so we rollback the changes
ROLLBACK;