--Задача №2
--Напишите SQL-запрос: С таблицы Products выведите ID категории (CategoryID) и среднюю стоймость товаров в этой категории. 
--В какой категории (CateforyID) самые дорогие товары?

SELECT CategoryID, AVG(UnitPrice) as avg_unitPrice
FROM Products
GROUP BY CategoryID
ORDER BY avg_unitPrice DESC