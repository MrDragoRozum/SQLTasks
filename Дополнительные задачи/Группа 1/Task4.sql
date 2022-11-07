--Задача №4
--Найдите заказ (OrderID) с самым большим количеством штук (Quantity) товаров в чеке.
--Если в заказе несколько разных товаров, то штуки нужно сложить. Какой OrderID у заказа?

SELECT OrderID, SUM(Quantity)
FROM [Order Details]
GROUP BY OrderID
ORDER BY 2 DESC
