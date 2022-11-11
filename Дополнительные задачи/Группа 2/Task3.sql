--Задача №3
--Посчитайте выручку по каждой категории. Какая категория принесла самую высокую выручку?

SELECT C.CategoryName, MAX(OD.UnitPrice) AS max_price
FROM [Order Details] AS OD INNER JOIN Products AS P ON OD.ProductID = P.ProductID
                           INNER JOIN Categories AS C ON C.CategoryID = P.CategoryID
GROUP BY C.CategoryName
ORDER BY 2 DESC;

SELECT *
FROM Categories

SELECT *
FROM [Order Details]

SELECT *
FROM Products