--Теперь сделаем противоположное. Напишите ин­струкцию SQL,
--которая извлекает название товара
--(prod_name) и его описание (prod_desc) из табли­цы Products,
--возвращая только товары без слова
--'toy' в описании. На этот раз отсортируйте ре­зультаты
--по названию товара.

SELECT prod_name, prod_desc
FROM Products
WHERE NOT prod_desc LIKE '%toy%'
ORDER BY prod_name;