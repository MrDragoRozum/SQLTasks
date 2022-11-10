--Задача №3
--Выведите товары, относящиеся к CategoryID = 1. 
--Используйте этот SQL-запрос как подзапрос, 
--для того чтобы посчитать общую выручку по товарам, относящимся к CategoryID = 1.



SELECT SUM(UnitPrice*Quantity*(1-Discount))
FROM [Order Details]
WHERE ProductID IN (SELECT ProductID
                    FROM Products p
                    WHERE CategoryID = 1);


