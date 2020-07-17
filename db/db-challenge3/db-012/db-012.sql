BEGIN;
UPDATE `chat_rooms`
SET can_sent_file = 0 , update_user_id = 1
WHERE create_user_id <> 1 AND is_deleted = 0
COMMIT;
