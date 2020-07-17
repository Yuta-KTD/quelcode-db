BEGIN;
UPDATE `users`
SET is_deleted = 1
WHERE work_phone_number IS NULL AND my_phone_number IS NULL;
COMMIT;
