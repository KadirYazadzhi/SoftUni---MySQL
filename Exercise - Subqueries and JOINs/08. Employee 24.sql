SELECT emp.`employee_id`, emp.`first_name`,
 CASE
      WHEN YEAR (pro.`start_date`) > 2004 
	  THEN pro.`name` = NULL
      ELSE pro.`name`
      END
AS `project_name`
FROM `employees` AS `emp`
LEFT JOIN `employees_projects` AS `map` 
ON emp.`employee_id` = map.`employee_id`
Left JOIN `projects` AS `pro` 
ON map.`project_id` = pro.`project_id`
WHERE emp.`employee_id` = 24
ORDER BY `project_name` ASC;