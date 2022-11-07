--Задача №1
--У какого количества клиентов в должности есть слово Sales, а регион не заполнен?

SELECT COUNT(*) AS count_clients
FROM Customers
WHERE ContactTitle LIKE '%Sales%' AND Region IS NULL 