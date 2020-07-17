BEGIN;
DELETE `rooms_join_users`
FROM `rooms_join_users`
JOIN `users`
ON `rooms_join_users`.user_id = `users`.id
WHERE `users`.is_deleted = 1;
COMMIT;

