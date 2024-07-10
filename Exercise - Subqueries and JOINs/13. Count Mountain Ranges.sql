SELECT mc.`country_code`, COUNT(m.`id`) AS `mountain_range` 
FROM `mountains_countries` AS `mc`
LEFT JOIN `mountains` AS `m`
ON mc.`mountain_id` = m.`id`
WHERE mc.`country_code` in ('BG', 'RU', 'US')
GROUP BY mc.`country_code`
HAVING `mountain_range` > 0
ORDER BY `mountain_range` DESC;
