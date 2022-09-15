--Нам важно знать лучших клиентов, поэтому напи­шите инструкцию SQL,
--которая возвращает номерзаказа (поле order_num таблицы Orderltems) для
--всех заказов, содержащих минимум 100 элементов.

SELECT order_num
FROM OrderItems oi
GROUP BY order_num
HAVING SUM(quantity) >= 100
ORDER BY order_num;
