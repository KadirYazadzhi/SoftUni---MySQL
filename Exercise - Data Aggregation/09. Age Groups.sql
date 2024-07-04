SELECT
  CASE
    WHEN `age` BETWEEN 0 AND 10 THEN '[0-10]'
    WHEN `age` BETWEEN 11 AND 20 THEN '[11-20]'
    WHEN `age` BETWEEN 21 AND 30 THEN '[21-30]'
    WHEN `age` BETWEEN 31 AND 40 THEN '[31-40]'
    WHEN `age` BETWEEN 41 AND 50 THEN '[41-50]'
    WHEN `age` BETWEEN 51 AND 60 THEN '[51-60]'
    ELSE '[61+]'
  END AS `age_group`,
  COUNT(*) AS `wizard_count`
FROM `wizzard_deposits`
GROUP BY `age_group`
ORDER BY
  CASE `age_group`
    WHEN '[0-10]' THEN 1
    WHEN '[11-20]' THEN 2
    WHEN '[21-30]' THEN 3
    WHEN '[31-40]' THEN 4
    WHEN '[41-50]' THEN 5
    WHEN '[51-60]' THEN 6
    WHEN '[61+]' THEN 7
  END;