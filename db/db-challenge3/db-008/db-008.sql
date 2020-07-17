SELECT `users`.user_name AS 'ユーザー名',
`chat_rooms`.room_name AS 'チャットルーム名',
CAST(`rooms_join_users`.user_joined_at AS DATE) AS '参加日'
FROM `rooms_join_users`
JOIN `chat_rooms`
ON `rooms_join_users`.room_id = `chat_rooms`.id
JOIN `users`
ON `rooms_join_users`.user_id = `users`.id
WHERE `chat_rooms`.is_deleted = 0
AND `users`.is_deleted = 0
ORDER BY `rooms_join_users`.user_joined_at ASC;
