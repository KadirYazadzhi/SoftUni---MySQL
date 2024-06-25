CREATE VIEW `townsName` AS
SELECT 
	`name`
FROM 
	`towns`;
    
CREATE VIEW `departmentName` AS
SELECT
	`name`
FROM 
	`departments`;
    
CREATE VIEW `employeesView` AS
SELECT
	`first_name`,
	`last_name`,
	`job_title`,
	`salary`
FROM
	`employees`;
    
SELECT * FROM `townsName` 
ORDER BY `name`;

SELECT * FROM `departmentName` 
ORDER BY `name`;

SELECT * FROM `employeesView` 
ORDER BY `salary` DESC;