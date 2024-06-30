UPDATE books
SET title = CONCAT('***', SUBSTRING(title, 4))
WHERE title LIKE 'The%';

SELECT title
FROM books
WHERE title LIKE '***%'
ORDER BY id;
