BEGIN;
UPDATE `chat_rooms`
SET can_sent_file = 0 , update_user_id = 1
WHERE id NOT IN (
    SELECT room_id
    FROM `rooms_join_users`
    WHERE user_id = 1)
AND is_deleted = 0;
COMMIT;
