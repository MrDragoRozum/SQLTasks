--Напишите инструкцию SQL, которая возвращает
--имя клиента (cust_name) из таблицы Customers и
--соответствующие ему номера заказов (order_num)
--из таблицы Orders, сортируя результаты сначала
--по имени клиента, а затем по номеру заказа. 
--Пред­ложите два варианта запроса:
--один — с использо­ванием простого синтаксиса соединений по ра­венству,
--а второй — с использованием оператора INNER JOIN.

-- Соеденение по равенству
SELECT cust_name, order_num
FROM Orders o, Customers c
WHERE o.cust_id = c.cust_id
ORDER BY cust_name, order_num;

-- Синтаксис ANSI
SELECT cust_name, order_num
FROM Orders INNER JOIN Customers
ON Orders.cust_id = Customers.cust_id
ORDER BY cust_name, order_num;
