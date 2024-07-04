SELECT `first_name`, `last_name`, `department_id`
FROM `employees` e
WHERE `salary` > (
    SELECT AVG(`salary`)
    FROM `employees` e2
    WHERE e.department_id = e2.department_id
)
ORDER BY `department_id`, `employee_id`
LIMIT 10;

