--Задача №1
--В каких городах проживают клиенты, не совершившие ни одного заказа? 
--Используйте LEFT JOIN, похожая задача была в видео-уроке.

SELECT C1.ContactName, C1.City, OrderID
FROM Customers C1 LEFT OUTER JOIN Orders O1 ON C1.CustomerID = O1.CustomerID
WHERE OrderID IS NULL;