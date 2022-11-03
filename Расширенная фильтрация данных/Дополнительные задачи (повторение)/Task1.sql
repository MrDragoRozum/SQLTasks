--Задача №5
--Напишите SQL запрос: Выведите информацию о человеке, который проживает в стране США 
--и работает в должности "Marketing Assistant". 
--Как зовут этого человека?

SELECT ContactName
FROM Customers
WHERE Country = 'USA' AND ContactTitle = 'Marketing Assistant'