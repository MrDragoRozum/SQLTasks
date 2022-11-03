--Задача №1
--Напишите SQL запрос: Сколько товаров (продуктов) стоят более 100 долларов?

SELECT ProductName
FROM [dbo].[Products]
WHERE UnitPrice > 100;
