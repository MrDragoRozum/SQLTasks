--Напишите инструкцию SQL, которая извлекает из
--таблицы OrderItems список уникальных номеров
--заказов (order_num), содержащих не менее 100
--единиц какого-либо товара.

SELECT DISTINCT order_num
FROM OrderItems
WHERE quantity >= 100;
