--Задача №3 
--Напишите SQL запрос: Посчитайте суммарную стоимость всех продуктов из категорий 4 и 5

SELECT SUM(UnitPrice)
FROM Products
WHERE CategoryID = 4 OR CategoryID = 5;