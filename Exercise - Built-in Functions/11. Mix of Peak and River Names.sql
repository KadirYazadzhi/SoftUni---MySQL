SELECT `peak_name`, `river_name`, LOWER(CONCAT(`peak_name`, SUBSTR(`river_name`, 2))) AS `mix`
FROM `peaks`
JOIN `rivers` 
ON RIGHT(`peak_name`, 1) = LEFT(`river_name`, 1)
ORDER BY `mix` ASC;