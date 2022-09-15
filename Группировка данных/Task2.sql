--Напишите инструкцию SQL, которая возвращает
--поле cheapest_item , содержащее самый дешевый
--товар по каждому поставщику (используйте поле
--prod_price таблицы Products), и отсортируйте
--результаты по возрастанию цены.

SELECT vend_id, MIN(prod_price) AS chepest_item 
FROM Products
GROUP BY vend_id
ORDER BY chepest_item;
