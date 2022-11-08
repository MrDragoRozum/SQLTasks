--Задача №2
--Посчитайте суммарную выручку (стоймость) по заказам, сделанных в 1997 году. Ответ округлите до целого числа.

SELECT ROUND(SUM(OD1.UnitPrice*OD1.Quantity*(1-OD1.Discount)), 0)
FROM [Order Details] AS OD1 INNER JOIN Orders AS O1 ON OD1.OrderID = O1.OrderID
WHERE YEAR(O1.OrderDate) = 1997;
