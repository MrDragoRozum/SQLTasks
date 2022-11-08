--Задача №3
--Выведите названия категорий и кол-во продуктов, входящих в категории. 
--Сопоставьте названия категорий и кол-во продуктов в категориях.

SELECT C1.CategoryID, COUNT(*)
FROM Categories AS C1 INNER JOIN Products AS P1 ON C1.CategoryID = P1.CategoryID
GROUP BY C1.CategoryID;