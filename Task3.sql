--Напишите инструкцию SQL, которая извлекает на­звание
--товара (prod_name) и его описание (prod_desc)
--из таблицы Products, 
--возвращая только то­вары со словами ’toy' и 'carrots' в описании.

SELECT prod_name, prod_desc 
FROM Products
WHERE prod_desc LIKE '%toy%' 
	AND prod_desc LIKE '%carrots%';
