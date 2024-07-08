CREATE TABLE `manufacturers` (
`manufacturer_id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
`name` VARCHAR(255) UNIQUE,
`established_on` DATE
);

CREATE TABLE `models` (
`model_id` INT PRIMARY KEY UNIQUE NOT NULL,
`name` VARCHAR(255),
`manufacturer_id` INT,
FOREIGN KEY (`manufacturer_id`) 
REFERENCES `manufacturers`(`manufacturer_id`)
);

INSERT INTO `manufacturers`(`name`, `established_on`) 
VALUES
		("BMW", "1916-03-01"),
		("Tesla", "2003-01-01"),
		("Lada", "1966-05-01");

INSERT INTO `models` 
VALUES 
		(101, "X1", 1),
		(102, "i6", 1),
		(103, "Model S", 2),
		(104, "Model X", 2),
		(105, "Model 3", 2),
		(106, "Nova", 3);