CREATE TABLE `people` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(255) NOT NULL,
`picture` BLOB,
`height` DOUBLE(6, 2),
`weight` DOUBLE(6, 2),
`gender` CHAR(1) NOT NULL,
`birthdate` DATE NOT NULL,
`biography` BLOB
);

INSERT INTO `people` (`id`, `name`, `picture`, `height`, `weight`, `gender`, `birthdate`, `biography`)
VALUES (1, 'Ivan', 'test', 1.89, 95.5, 'm', '1976-05-04', 'test'),
(2, 'Gosho', 'test', 1.89, 95.5, 'm', '1976-05-04', 'test'),
(3, 'Lily', 'test', 1.89, 95.5, 'f', '1976-05-04', 'test'),
(4, 'Maria', 'test', 1.89, 95.5, 'f', '1976-05-04', 'test'),
(5, 'Yoan', 'test', 1.89, 95.5, 'm', '1976-05-04', 'test');