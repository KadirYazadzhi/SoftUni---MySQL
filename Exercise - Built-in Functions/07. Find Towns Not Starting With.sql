SELECT * FROM `towns`
WHERE `name` NOT REGEXP '^[RBD]'
ORDER BY `name` ASC;