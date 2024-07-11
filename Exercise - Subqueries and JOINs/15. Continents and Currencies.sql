SELECT cu2.`continent_code`, cu2.`currency_code` , cu2.`currency_usage`
	FROM (SELECT `continent_code`, `currency_code`, COUNT(`currency_code`) AS 'currency_usage'
	        FROM `countries`
			GROUP BY `continent_code`, `currency_code`
			HAVING COUNT(`currency_code`) > 1
           ) AS `cu2`
	JOIN
		(SELECT cu.`continent_code`, MAX(`currency_usage`) AS 'max_currency_usage'
			FROM
		(SELECT `continent_code`, `currency_code`, COUNT(`currency_code`) AS 'currency_usage'
			FROM `countries`
			GROUP BY `continent_code`, `currency_code`
			HAVING COUNT(`currency_code`) > 1) AS `cu`
			GROUP BY cu.`continent_code`) AS `max_cu`
ON cu2.`continent_code` = max_cu.`continent_code`
AND cu2.`currency_usage` = max_cu.`max_currency_usage`
ORDER BY cu2.`continent_code`, cu2.`currency_code`;

