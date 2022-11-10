--Задача №2
--Выведите ID клиентов и кол-во заказов, совершенных клиентами. 
--Оставьте только ID клиентов с количеством заказов более 10. 
--Затем, используя вложенный запрос, посчитайте количество оставшихся клиентов.

SELECT COUNT(*)
FROM(SELECT CustomerID, COUNT(*) AS orders
FROM Orders
GROUP BY CustomerID
HAVING COUNT(*) > 10) AS tablet1;