SELECT e.`employee_id`, 
	   CONCAT_WS(" ", e.`first_name`, e.`last_name`) AS `employee_name`, 
	   CONCAT_WS(" ", ee.`first_name`, ee.`last_name`) AS `manager_name`, 
	   d.`name` AS `department_name`
FROM `employees` AS `e`
JOIN `employees` AS `ee`
ON e.`manager_id` = ee.`employee_id`
JOIN `departments` AS `d` 
ON e.`department_id` = d.`department_id`
ORDER BY e.`employee_id` ASC
LIMIT 5;

