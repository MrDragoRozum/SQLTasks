--Нам нужен список клиентских идентификаторов
--с общей суммой заказов по каждому из них. 
--На­пишите инструкцию SQL, которая возвращает
--идентификатор клиента (поле cust_id таблицы Orders)
--и поле total_ordered, содержащее об­щую сумму заказов
--по каждому клиенту (это дол­жен быть подзапрос).
--Отсортируйте результаты по убыванию суммы заказов. 

SELECT cust_id, (SELECT SUM(quantity*item_price)
			FROM OrderItems
			WHERE OrderItems.order_num = Orders.order_num)
			AS total_ordered
FROM Orders
ORDER BY total_ordered DESC;
