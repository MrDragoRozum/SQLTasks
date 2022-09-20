--Давайте доработаем предыдущее упражнение. В
--дополнение к имени клиента и номеру заказа до­бавьте третий столбец,
--OrderTotal, содержащий общую стоимость каждого заказа. 
--Это можно сде­лать двумя способами: путем создания подзапроса
--к таблице Orderltems или путем соединения та­блицы OrderItems
--с существующими таблицами с последующим применением итоговой функции.
--Подсказка: следите за тем, где должны использо­ваться полные имена столбцов.

SELECT cust_name, 
	o.order_num, 
	(SELECT SUM(item_price*quantity)
	FROM OrderItems oi 
	WHERE oi.order_num = o.order_num)
	AS OrderTotal
FROM Orders o, Customers c
WHERE o.cust_id = c.cust_id
GROUP BY cust_name, order_num
ORDER BY cust_name, order_num;

SELECT cust_name, o.order_num, SUM(item_price*quantity) AS OrderTotal
FROM Orders o, Customers c, OrderItems oi
WHERE o.cust_id = c.cust_id 
	AND oi.order_num = o.order_num
GROUP BY cust_name, o.order_num
ORDER BY cust_name, o.order_num;
