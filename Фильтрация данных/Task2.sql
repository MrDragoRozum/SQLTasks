--Напишите инструкцию SQL, которая извлекает
--идентификатор товара (prod_id) и название това­ра
--(prod_name) из таблицы Products, возвращая
--только товары с ценой не ниже 9.
SELECT prod_id, prod_name
FROM Products
WHERE prod_price >= 9;