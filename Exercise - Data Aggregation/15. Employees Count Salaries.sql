SELECT COUNT(`salary`) AS 'salary_count'
FROM `employees`
WHERE `manager_id` IS NULL;