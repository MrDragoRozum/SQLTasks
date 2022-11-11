--Задача №1
--Посчитайте количество заказов, в которых присутствовал товар Chocolade.

SELECT COUNT(*)
FROM [Order Details]
WHERE ProductID = (SELECT ProductID
                   FROM Products
                   WHERE ProductName = 'Chocolade');

