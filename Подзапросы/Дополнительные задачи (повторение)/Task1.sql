--Задача №1
--Выведите страны и кол-во клиентов, проживающих в этих странах. 
--Оставьте только страны с количеством клиентов более одного. 
--Затем, используя вложенный запрос, посчитайте количество оставшихся стран.

SELECT COUNT(*)
FROM(
    SELECT Country, COUNT(*) as count_clients 
    FROM Customers
    GROUP BY Country
    HAVING COUNT(*) > 1) as tablet1;