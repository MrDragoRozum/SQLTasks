--Задача №3
--Выведите максимальную и минимальную стоимость товаров в каждой категории (CategoryID).
--В какой категории самая большая разница между самой высокой ценой товара и самой низкой ценой?

SELECT CategoryID, MAX(UnitPrice)-MIN(UnitPrice)
FROM Products
GROUP BY CategoryID
ORDER BY 2 DESC;