INSERT INTO users
(`id` , `user_name` , `mail` , `password` , `introduction` , `work_phone_number` , `my_phone_number` , `is_deleted` , `created_at` , `updated_at`)
VALUE
(1 , 'admin' , 'admin@labot.inc' , 'admin' , 'このスペースの管理者です。' , '00-0000-0000' , NULL , 0 , '2020/04/20 15:47:52' , '2020/04/20 15:47:52'),
(2 , 'mysql' , 'mysql@labot.inc' , 'mysql55' , NULL , NULL , '080-1234-1253' , 0 , '2020/04/22 16:02:55' , '2020/04/22 16:02:55'),
(3 , 'sqlserver' , 'sqlserver@labot.inc' , 'apple' , 'オラクルデータベースが好きです。' , NULL , NULL , 0 , '2020/04/22 17:32:55' , '2020/04/22 17:32:55'),
(4 , 'mariadb' , 'mariadb@labot.inc' , 'maria' , NULL , '03-6666-5879' , NULL , 0 , '2020/04/22 18:45:21' , '2020/04/22 18:45:21'),
(5 , 'laravel' , 'laravel@labot.inc' , 'lara' , NULL , NULL , NULL , 0 , '2020/04/22 18:46:01' , '2020/04/22 18:46:01'),
(6 , 'cake' , 'cakephp@labot.inc' , 'cake89' , NULL , '03-987-1234' , '090-5555-7854' , 0 , '2020/04/23 02:51:06' , '2020/04/25 11:45:06'),
(7 , 'react' , 'react@labot.inc' , 'node' , NULL , NULL , NULL , 0 , '2020/04/23 09:54:32' , '2020/04/23 09:54:32'),
(8 , 'html5' , 'html@labot.inc' , 'css3' , NULL , NULL , '080-5849-5555', 0 , '2020/04/23 09:55:14' , '2020/04/23 09:55:14'),
(9 ,'php' , 'php@labot.inc' , 'php7' , '伝説のphp6' , NULL , NULL , 0 , '2020/04/24 01:01:06' , '2020/04/24 01:01:06'),
(10 , 'js' , 'javascript@labot.inc' , 'react' , 'Hello world' , '0120-555-458' , NULL , 0 , '2020/04/24 05:03:58' , '2020/04/24 05:03:58'),
(11 ,'amazon' , 'microsoft@gmail.com' , 'google' , 'facebook' , NULL , '080-9999-5555' , 1 , '2020/04/24 06:00:02' , '2020/04/26 12:13:43')
