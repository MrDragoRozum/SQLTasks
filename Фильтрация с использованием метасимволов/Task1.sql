--Напишите инструкцию SQL, которая извлекает на­
--звание товара (prod_name) и его описание (prod_desc)
--из таблицы Products, возвращая только то­
--вары со словом 'toy' 1 в описании.

SELECT prod_name, prod_desc
FROM Products
WHERE prod_desc LIKE '%toy%';
