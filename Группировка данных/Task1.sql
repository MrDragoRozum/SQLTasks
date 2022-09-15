--В таблице OrderItems перечислены элементы
--каждого заказа. Напишите инструкцию SQL,
--которая возвращает количество позиций (в виде поля
--order_lines) для каждого номера заказа (order_num),
--и отсортируйте результаты по полю order_lines.

SELECT order_num, COUNT(*) AS order_lines
FROM OrderItems 
GROUP BY order_num
ORDER BY order_lines;
