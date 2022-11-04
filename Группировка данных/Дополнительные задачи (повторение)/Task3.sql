--Задача №3
--Напишите SQL-запрос: С таблицы Orders по заказам, сделанным в марте 1998 года, 
--выведите даты заказов (OrderDate) и кол-во заказов, совершенных в эти даты. 
--Посчитайте кол-во дней, в которых было совершено 4 заказа.

--Подсказка: В этой задаче примените и WHERE и HAVING

SELECT OrderDate, COUNT(*)
FROM Orders
WHERE DATEPART(yy, OrderDate) = 1998 AND DATEPART(MM, OrderDate) = 03
GROUP BY OrderDate
HAVING COUNT(*) = 4