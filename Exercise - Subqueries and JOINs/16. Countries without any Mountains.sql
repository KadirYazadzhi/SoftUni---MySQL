SELECT COUNT(c.`country_code`) - COUNT(`mountain_id`) AS 'CountryCode'
FROM `mountains` AS `m`
RIGHT JOIN `mountains_countries` AS `mc`
ON m.`id` = mc.`mountain_id`
RIGHT JOIN `countries` AS `c`
ON mc.`country_code` = c.`country_code`;