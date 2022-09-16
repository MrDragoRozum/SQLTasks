--Напишите инструкцию SQL, которая возвращает
--названия всех товаров (prodjname) из таблицы
--Products, а также вычисляемый столбец quant_sold, содержащий общее количество проданных
--единиц по каждому товару 
--(для этого применяет­ся подзапрос к таблице OrderItems,
--включающий функцию SUM(quantity)).


SELECT prod_name AS prodjname, 
	(SELECT SUM(quantity)
	FROM OrderItems oi
	WHERE p.prod_id = oi.prod_id) 
	AS quant_sold
FROM Products p;
