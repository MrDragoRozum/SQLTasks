
--Задача №1
--Напишите SQL запрос: Выведите минимальную, максимальную и среднюю стоимость продуктов,
--которые входят в категорию (столбец CategoryID) №3. 
--Какова максимальная стоимость продуктов в этой категории? Ответ округлите до целого числа. 
--Назовите итоговые столбцы новыми именами: min_price, max_price, avg_price

SELECT MIN(P.UnitPrice) AS min_price, MAX(P.UnitPrice) AS max_price, AVG(P.UnitPrice) as avg_price
FROM [dbo].[Products] AS P
WHERE CategoryID = 3