DELIMITER $$
CREATE PROCEDURE usp_raise_salary_by_id(id INT(10))
BEGIN
	UPDATE `employees` AS e
    SET e.salary = e.salary * 1.05
    WHERE e.employee_id = id;
END $$
DELIMITER ;

-- With transaction
DELIMITER $$
CREATE PROCEDURE usp_raise_salary_by_id(id INT(10))
BEGIN
	START TRANSACTION;
    IF((SELECT COUNT(e.employee_id) 
		FROM `employees` as e 
		WHERE e.employee_id LIKE id)<>1) 
		THEN ROLLBACK;
    ELSE
		UPDATE `employees` AS e
		SET e.salary = e.salary * 1.05
		WHERE e.employee_id = id;
	END IF;
END $$
DELIMITER ;