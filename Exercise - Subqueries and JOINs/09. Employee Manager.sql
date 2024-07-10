SELECT e.`employee_id`, e.`first_name`, ee.`employee_id`, ee.`first_name` AS `manager_name`
FROM `employees` AS `e`
JOIN `employees` AS `ee`
ON e.`manager_id` = ee.`employee_id`
WHERE e.`manager_id` IN (3, 7)
ORDER BY e.`first_name` ASC;