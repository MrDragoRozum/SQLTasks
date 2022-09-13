--Напишите инструкцию SQL, которая возвращает
--общее количество заказанных товаров 
--(используй­те столбец quantity таблицы Orderltems).

SELECT SUM(quantity) as item_ordered
FROM OrderItems oi;
