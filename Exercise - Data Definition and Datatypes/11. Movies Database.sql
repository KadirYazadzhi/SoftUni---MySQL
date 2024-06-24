CREATE DATABASE `Movies`;

CREATE TABLE `directors` (
`id` INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
`director_name` VARCHAR(255) NOT NULL,
`notes` VARCHAR(255)
);
INSERT INTO `directors` (`id`, `director_name`, `notes`)
VALUES (1, "Ivan", NULL),
		(2, "Yoan", "test"),
		(3, "Petur", NULL),
		(4, "Vladislav", "test"),
		(5, "Georgy", NULL);
        


CREATE TABLE `genres` (
`id` INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
`genre_name` VARCHAR(255) NOT NULL,
`notes` VARCHAR(255)
);
INSERT INTO `genres` (`id`, `genre_name`, `notes`)
VALUES (1, "Fantasy", "test"),
		(2, "Horror", "test"),
		(3, "Adventure", NULL),
		(4, "Romance", "test"),
		(5, "Sci-fi", "test");



CREATE TABLE `categories` (
`id` INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
`category_name` VARCHAR(255) NOT NULL,
`notes` VARCHAR(255)
);
INSERT INTO categories(id, category_name, notes) VALUES
(1, 'NewMovies', 'test'),
(2, 'OldMovies', 'test'),
(3, 'StupidMovies', NULL),
(4, 'NotFunMovies', 'test'),
(5, 'ChinaMovies', 'test');



CREATE TABLE `movies` (
`id` INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
`title` VARCHAR(255) NOT NULL,
`director_id` INT,
`copyright_year` DATETIME,
`length` DECIMAL(6, 2),
`genre_id` INT,
`category_id` INT,
`rating` FLOAT DEFAULT 0.00,
`notes` VARCHAR(255)
);
INSERT INTO movies(id, title, director_id, copyright_year, length, genre_id, category_id, rating, notes) VALUES 
(1, 'Movie1', 1, '2000-12-24', 65.5, 1, 1 , DEFAULT , NULL),
(2, 'Movie2', 2, '2000-12-25', 40.5, 2, 1 , DEFAULT , NULL),
(3, 'Movie3', 3, '2000-12-26', 50.5, 3, 2 , DEFAULT , NULL),
(4, 'Movie4', 2, '2000-12-27', 120.5, 1, 1 , DEFAULT , NULL),
(5, 'Movie5', 1, '2000-02-17', 80, 3, 2 , DEFAULT , 'Hello its a note');