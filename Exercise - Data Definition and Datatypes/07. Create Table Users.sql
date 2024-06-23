CREATE TABLE `users` (
`id` INT PRIMARY KEY AUTO_INCREMENT UNIQUE NOT NULL,
`username` VARCHAR(30) UNIQUE NOT NULL,
`password` VARCHAR(26) NOT NULL,
`profile_picture` BLOB,
`last_login_time` DATETIME, 
`is_deleted` BOOLEAN
);

INSERT INTO `users`(`id`, `username`, `password`, `profile_picture`, `last_login_time`, `is_deleted`)
VALUES (1, 'Pesho', '123', 'test', NOW(), false),
		(2, 'Gosho', '456', 'test', NOW(), true),
		(3, 'Yoan', '789', 'test', NOW(), true),
		(4, 'Maria', '199', 'test', NOW(), false),
		(5, 'Ivan', '166', 'test', NOW(), true);