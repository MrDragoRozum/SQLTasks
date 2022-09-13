--Модифицируйте предыдущую инструкцию, чтобы
--она возвращала общее количество заказов товара 'BR01'.

SELECT SUM(quantity) as item_ordered
FROM OrderItems oi
WHERE prod_id = 'BR01';
