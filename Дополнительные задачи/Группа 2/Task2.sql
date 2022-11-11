--Задача №2 
--Посчитайте общую выручку, которую принесли товары категории Confections. 
--Ответ округлите до целого числа.

SELECT ROUND(SUM(OD.UnitPrice*OD.Quantity*(1-OD.Discount)), 0)
FROM [Order Details] AS OD INNER JOIN Products AS P ON OD.ProductID = P.ProductID
                           INNER JOIN Categories AS C ON C.CategoryID = P.CategoryID
WHERE C.CategoryName = 'Confections';
