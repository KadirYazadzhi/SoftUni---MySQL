CREATE TABLE categories (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`category` VARCHAR(255) NOT NULL,
`daily_rate` DOUBLE DEFAULT 0.00,
`weekly_rate` DOUBLE DEFAULT 0.00,
`monthly_rate` DOUBLE DEFAULT 0.00,
`weekend_rate` DOUBLE DEFAULT 0.00
);
INSERT INTO categories(`id`, `category`, `daily_rate`, `weekly_rate`, `monthly_rate`, `weekend_rate`) VALUES 
(1, 'Mercedes', 0.50, 1.50, 2.50, DEFAULT),
(2, 'Audi', 0.75, 2.50, 4.50, DEFAULT),
(3, 'Peugeot', 0.25, 0.50, 1.50, DEFAULT);





CREATE TABLE cars (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`plate_number` VARCHAR(15) NOT NULL,
`make` VARCHAR(255) NOT NULL,
`model` VARCHAR(255) NOT NULL,
`car_year` DATE NOT NULL,
`category_id` INT NOT NULL,
`doors` INT NOT NULL,
`picture` BLOB,
`car_condition` VARCHAR(255) NOT NULL,
`available` BIT NOT NULL
);
INSERT INTO cars(`id`, `plate_number`, `make`, `model`, `car_year`, `category_id`, `doors`, `picture`, `car_condition`, `available`) VALUES 
(1, 'CA1010BA', 'Opel', 'Vectra', '2000-11-24', 1, 4, 'test', 'Good', 1),
(2, 'CA2020BA', 'Ford', 'Fiesta', '2000-11-24', 2, 4,'test', 'Good', 1),
(3, 'CA3030BA', 'Tesla', 'Model S', '2016-11-24', 3, 4,'test', 'New', 1);




CREATE TABLE employees (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`first_name` VARCHAR(255) NOT NULL,
`last_name` VARCHAR(255) NOT NULL,
`title` VARCHAR(255) NOT NULL,
`notes` VARCHAR(255)
);
INSERT INTO employees (`id`, `first_name`, `last_name`, `title`, `notes`) VALUES 
(1, 'Sange', 'Hindululu', 'Mr', 'Cheap Labor'),
(2, 'Ivan', 'Ivanov', 'Sir', 'Crazy'),
(3, 'Penka', 'Teslova', 'Ms', 'Cool name');




CREATE TABLE customers (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`driver_licence_number` VARCHAR(15) NOT NULL,
`full_name` VARCHAR(255) NOT NULL,
`address` VARCHAR(255) NOT NULL,
`city` VARCHAR(255) NOT NULL,
`zip_code` INT NOT NULL,
`notes` VARCHAR(255)
);
INSERT INTO customers (`id`, `driver_licence_number`, `full_name`, `address`, `city`, `zip_code`, `notes`) VALUES 
(1,'ZZA46656', 'Ivan Vankov', 'Gorno Nadolnishe', 'Kichuka', 1000, 'test'),
(2, 'ZZA43236', 'Petar Vankov', 'Sredno Nadolnishe', 'Kichuka', 1001, 'test'),
(3, 'ZZA45466', 'Gosho Vankov', 'Dolno Nadolnishe', 'Kichuka', 1002, 'test');




CREATE TABLE rental_orders (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`employee_id` INT NOT NULL,
`customer_id` INT NOT NULL,
`car_id` INT NOT NULL,
`car_condition` VARCHAR(255) NOT NULL,
`tank_level` VARCHAR(255) DEFAULT 'Not full' NOT NULL,
`kilometrage_start` INT,
`kilometrage_end` INT,
`total_kilometrage` INT,
`start_date` DATE NOT NULL,
`end_date` DATE NOT NULL, 
`total_days` INT NOT NULL,
`rate_applied` DOUBLE NOT NULL DEFAULT 0.00,
`tax_rate` DOUBLE NOT NULL DEFAULT 0.00,
`order_status` VARCHAR(255)NOT NULL,
`notes` VARCHAR(255)
);
INSERT INTO rental_orders (`id`, `employee_id`, `customer_id`, `car_id`, `car_condition`, `tank_level`, `kilometrage_start`, `kilometrage_end`, `total_kilometrage`, `start_date`, `end_date`, `total_days`, `rate_applied`, `tax_rate`, `order_status`, `notes`) VALUES
(1, 1, 2, 3, 'Good', DEFAULT, 100, 200, 100, '2017-01-17', '2019-01-27', 1, 10.0, 10.0, 'Confirmed', 'None'),
(2, 1, 2, 3, 'Perfect', 'Full', 100, 200, 100, '2017-01-17', '2000-04-17', 1, 10.0, 10.0, 'Confirmed', 'None'),
(3, 1, 2, 3, 'Good', DEFAULT, 100, 200, 100, '2017-01-17','2007-01-10', 1, 10.0, 10.0, 'Confirmed', 'None');