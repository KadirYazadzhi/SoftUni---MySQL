CREATE TABLE `mountains` (
`id` INT AUTO_INCREMENT PRIMARY KEY UNIQUE NOT NULL,
`name` VARCHAR(255)
);

CREATE TABLE `peaks` (
`id` INT AUTO_INCREMENT PRIMARY KEY UNIQUE NOT NULL,
`name` VARCHAR(255),
`mountain_id` INT NOT NULL,
CONSTRAINT `fk_peaks_mountains`
FOREIGN KEY (`mountain_id`)
REFERENCES `mountains`(`id`)
);