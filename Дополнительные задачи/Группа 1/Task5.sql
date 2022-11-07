--Задача №5
--Посчитайте суммарный размер скидки по каждому заказу (не в процентах). 
--У скольких заказов скидка составила больше 3 000? 
--Примечание: В столбце Discount указана скидка в процентах. Подумайте как расчитать фактическую скидку.

SELECT OrderID, SUM(UnitPrice*Discount*Quantity)
FROM [dbo].[Order Details]
GROUP BY OrderID
HAVING SUM(UnitPrice*Discount*Quantity) > 3000;