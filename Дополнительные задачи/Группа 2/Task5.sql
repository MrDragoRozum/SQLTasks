--Задача №5
--Выведите города доставки (Shipcity), и кол-во заказов, оформленных в эти города в 1997 году.
--Оставьте только города с кол-вом заказов больше 5. 
--Затем с помощью вложенного запроса посчитайте кол-во таких городов.

SELECT COUNT(*)
FROM(SELECT ShipCity, COUNT(*) as count_orders
FROM Orders
WHERE YEAR(OrderDate) = '1997'
GROUP BY ShipCity
HAVING COUNT(*) > 5) AS tablet1
