CREATE TABLE `users` (
    `id` INT(11) PRIMARY KEY AUTO_INCREMENT,
    `user_name` VARCHAR(100) NOT NULL,
    `mail` VARCHAR(100) NOT NULL,
    `introduction` VARCHAR(1000),
    `work_phone_number` VARCHAR(13),
    `my_phone_number` VARCHAR(13),
    `is_deleted` TINYINT(1) NOT NULL DEFAULT 0,
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP ,
    `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE `chat_rooms` (
    `id` INT(11) PRIMARY KEY AUTO_INCREMENT,
    `room_name` VARCHAR(100) NOT NULL,
    `description` VARCHAR(1000),
    `can_sent_file` TINYINT(1) NOT NULL DEFAULT 0,
    `is_direct_chat` TINYINT(1) NOT NULL DEFAULT 0,
    `is_deleted` TINYINT(1) NOT NULL DEFAULT 0,
    `create_user_id` INT(11) NOT NULL REFERENCES users(`id`),
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP ,
    `update_user_id` INT(11) NOT NULL REFERENCES users(`id`),
    `update_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE `rooms_join_users` (
    `user_id` INT(11) REFERENCES users(`id`),
    `room_id` INT(11) REFERENCES char_rooms(`id`),
    `user_joined_at` DATETIME NOT NULL,
    PRIMARY KEY (`user_id`,`room_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `chat_posts` (
    `id` INT(11) PRIMARY KEY AUTO_INCREMENT,
    `chat_room_id` INT(11) NOT NULL REFERENCES chat_rooms(`id`),
    `post` VARCHAR(1000) NOT NULL,
    `file_name` VARCHAR(100),
    `is_deleted` TINYINT(1) NOT NULL DEFAULT 0,
    `create_user_id` INT(11) NOT NULL REFERENCES users(`id`),
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP ,
    `update_user_id` INT(11) NOT NULL REFERENCES users(`id`),
    `update_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE `tasks` (
    `id` INT(11) PRIMARY KEY AUTO_INCREMENT,
    `user_id` INT(11) NOT NULL REFERENCES users(`id`),
    `chat_room_id` INT(11) NOT NULL REFERENCES chat_rooms(`id`),
    `task_deadline` DATETIME,
    `is_completed` TINYINT(1) NOT NULL DEFAULT 0,
    `is_deleted` TINYINT(1) NOT NULL DEFAULT 0,
    `create_user_id` INT(11) NOT NULL REFERENCES users(`id`),
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP ,
    `update_user_id` INT(11) NOT NULL REFERENCES users(`id`),
    `update_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
