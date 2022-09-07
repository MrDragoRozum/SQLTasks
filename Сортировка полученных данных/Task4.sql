--Что неправильного в следующей инструкции SQL?
--(Постарайтесь понять это, не выполняя саму ин­струкцию).

SELECT vend_name,
FROM Vendors
ORDER vend_name DESC;

/* 
 * Предложение неполное, а именно не хватает BY у ,
 * также добавлена ненужная запятая.
 * Правильно будет так:
 */
 
SELECT vend_name
FROM Vendors
ORDER BY vend_name DESC;