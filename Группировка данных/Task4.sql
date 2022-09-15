--Для выявления лучших клиентов можно также
--проверять, сколько денег они потратили. Напи­шите
--инструкцию SQL, которая возвращает номер
--заказа (поле order_num таблицы Orderltems) для
--всех заказов с суммарной ценой как минимум 1000.

SELECT order_num, SUM(quantity*item_price) AS total_price
FROM OrderItems
GROUP BY order_num
HAVING SUM(quantity*item_price) >= 1000
ORDER BY order_num;
