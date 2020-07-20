SELECT `chat_rooms`.room_name , COUNT(*) AS '投稿数'
FROM `chat_posts`
JOIN `chat_rooms`
ON `chat_posts`.chat_room_id = `chat_rooms`.id
JOIN `users`
ON `chat_posts`.create_user_id = `users`.id
WHERE `chat_posts`.is_deleted = 0 AND `users`.is_deleted = 0
GROUP BY `chat_posts`.chat_room_id
ORDER BY COUNT(*) DESC
