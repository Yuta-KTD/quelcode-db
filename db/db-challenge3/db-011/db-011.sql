BEGIN;
UPDATE `tasks`
SET is_completed = 1 , update_user_id = 1
WHERE created_at BETWEEN '2020/4/26 09:00' AND '2020/4/26 11:30'
COMMIT;
