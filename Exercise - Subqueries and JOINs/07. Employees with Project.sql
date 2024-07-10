SELECT e.`employee_id`, e.`first_name`, p.`name` AS 'project_name'
FROM `employees` AS `e`
JOIN `employees_projects` AS `ep` 
ON ep.`employee_id` = e.`employee_id`
JOIN `projects` AS `p` 
ON ep.`project_id` = p.`project_id`
WHERE DATE(p.`start_date`) > "2002-08-13"
AND p.`end_date` IS NULL
ORDER BY e.`first_name` ASC, p.`name` ASC
LIMIT 5;

select e.employee_id,e.first_name,p.name as project_name
from employees as e
join employees_projects as ep
on ep.employee_id=e.employee_id
join projects as p
on ep.project_id=p.project_id
where date(p.start_date)>'2002-08-13' and p.end_date is null
order by e.first_name asc,p.name asc
limit 5;