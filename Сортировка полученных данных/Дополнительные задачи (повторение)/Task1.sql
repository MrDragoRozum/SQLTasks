--Задача №1 (сортировка)
--Напишите SQL запрос: Выведите заказы, сделанные в дату "1998-02-26 00:00:00.000. 
--Отсортируйте заказы по весу (столбец "Freight"). 
--Какой номер заказа (Order ID) имеет самый большой вес?

SELECT *
FROM Orders
WHERE OrderDate = '1998-02-26 00:00:00.000'
ORDER BY Freight DESC;
