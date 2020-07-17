SELECT user_name , `chat_posts`.created_at , room_name
FROM `chat_posts`
JOIN `users`
ON `chat_posts`.create_user_id = `users`.id
JOIN `chat_rooms`
ON `chat_posts`.chat_room_id = `chat_rooms`.id
WHERE `users`.is_deleted = 0
AND (chat_room_id , `chat_posts`.created_at)
IN (SELECT chat_room_id , MAX(created_at)
    FROM `chat_posts`
    WHERE is_deleted = 0
    GROUP BY chat_room_id
    ORDER BY chat_room_id );
