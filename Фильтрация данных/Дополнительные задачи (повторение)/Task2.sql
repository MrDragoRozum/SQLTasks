--Задача №2
--Напишите SQL запрос: Сколько клиентов в нашей базе данных из Испании?

SELECT ContactName, Country
FROM [dbo].[Customers]
WHERE Country = 'Spain'