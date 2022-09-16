--Нам нужно узнать даты заказов товара 'BR01'
--Напишите инструкцию SQL, которая использу­ет подзапрос
--для нахождения заказов (в таблице OrderItems),
--содержащих товар с идентификато­ром 'BR01' (prod_id),
--а затем возвращает иденти­фикатор клиента (cust_id)
--и дату заказа (order_date) из таблицы Orders.
--Отсортируйте результа­ты по дате заказа.

SELECT order_date, cust_id
FROM Orders
WHERE order_num IN
    (SELECT order_num
    FROM OrderItems
    WHERE prod_id = 'BR01')
ORDER BY order_date;
