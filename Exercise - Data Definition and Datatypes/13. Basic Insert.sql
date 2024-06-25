CREATE DATABASE soft_uni;

-- DO NOT SUBMIT CODE FOR CREATING TABLES INTO JUDGE SYSTEM

CREATE TABLE `towns` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(255)
); 
INSERT INTO `towns` (`id`, `name`)
VALUES (1, "Sofia"),
		(2, "Plovdiv"),
		(3, "Varna"),
		(4, "Burgas");

CREATE TABLE `addresses` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`address_text` VARCHAR(255),
`town_id` INT
);

CREATE TABLE `departments` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(255)
);
INSERT INTO `departments` (`id`, `name`)
VALUES (1, "Engineering"),
		(2, "Sales"),
		(3, "Marketing"),
		(4, "Software Developmen"),
		(5, "Quality Assurance");


CREATE TABLE `employees` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`first_name` VARCHAR(255),
`middle_name` VARCHAR(255),
`last_name` VARCHAR(255),
`job_title` VARCHAR(255),
`department_id` INT,
`hire_date` DATE,
`salary` DOUBLE(6, 2),
`address_id` INT 
);
INSERT INTO `employees` (`id`, `first_name`, `middle_name`, `last_name`, `job_title`, `department_id`, `hire_date`, `salary`)
VALUES (1, 'Ivan', 'Ivanov', 'Ivanov', '.NET Developer', 4, '2013-02-01', 3500.00),
		(2, 'Petar', 'Petrov', 'Petrov', 'Senior Engineer', 1, '2004-03-02', 4000.00),
		(3, 'Maria', 'Petrova', 'Ivanova', 'Intern', 5, '2016-08-28', 525.25),
		(4, 'Georgi', 'Terziev', 'Ivanov', 'CEO', 2, '2007-12-09', 3000.00),
		(5, 'Peter', 'Pan', 'Pan', 'Intern', 3, '2016-08-28', 599.88);
