--Задача №2
--Найдите самую популярную профессию среди клиентов.

SELECT MAX(ContactTitle)
FROM Customers;

-- Или

SELECT ContactTitle, COUNT(*)
FROM Customers
GROUP BY ContactTitle
ORDER BY 2 DESC;