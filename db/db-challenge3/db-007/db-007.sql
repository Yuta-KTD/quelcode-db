SELECT `id`,`room_name`,`description`,
CASE `can_sent_file`
WHEN 1 THEN '許可'
WHEN 0 THEN '禁止' END AS 'can_sent_file' ,
`is_direct_chat`,`is_deleted`,`create_user_id`,`created_at`,`update_user_id`,`updated_at`
FROM chat_rooms
WHERE `is_deleted` = 0
ORDER BY id ASC;
