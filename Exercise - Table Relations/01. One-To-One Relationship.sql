CREATE TABLE `passports` (
`passport_id` INT PRIMARY KEY UNIQUE NOT NULL,
`passport_number` VARCHAR(255) UNIQUE
);

CREATE TABLE `people` (
`person_id` INT PRIMARY KEY AUTO_INCREMENT UNIQUE NOT NULL,
`first_name` VARCHAR(255),
`salary` DECIMAL(10, 2),
`passport_id` INT NOT NULL UNIQUE,
FOREIGN KEY (`passport_id`) REFERENCES `passports`(`passport_id`)
);

INSERT INTO `passports`
VALUES (101, "N34FG21B"),
(102, "K65LO4R7"),
(103, "ZE657QP2");

INSERT INTO `people`
VALUES (1, "Roberto", 43300.00, 102),
(2, "Tom", 56100.00, 103),
(3, "Yana", 60200.00, 101);

