SELECT `deposit_group` FROM `wizzard_deposits`
GROUP BY `deposit_group`
HAVING MIN(`magic_wand_size`)
LIMIT 1;