--Задача №2 -Напишите SQL запрос: 
--Посчитайте кол-во уникальных профессий клиентов, проживающих в Великобритании (UK).

SELECT COUNT(distinct ContactTitle)
FROM Customers
WHERE Country = 'UK'
