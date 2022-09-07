--Напишите инструкцию SQL, извлекающую на­
--звание товара (prod_name) и цену товара (prod_price)
--из таблицы Products для всех товаров,
--цена на которые находится в диапазоне от 3 до б.
--Результаты должны быть отсортированы по цене.

SELECT prod_name, prod_price 
FROM Products
WHERE prod_price BETWEEN 3 AND 6
ORDER BY prod_price;
