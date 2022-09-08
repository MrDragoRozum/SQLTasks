--Вернемся к упражнению из предыдущего урока.
--Напишите инструкцию SQL, извлекающую на­
--звание товара (prod_name) и цену товара
--(prod_price) из таблицы Products для всех товаров,
--цена на которые находится в диапазоне от 3 до 6.
--Используйте оператор AND и отсортируйте резуль­таты по цене.

SELECT prod_name, prod_price
FROM Products
WHERE prod_price <= 6 AND prod_price >= 3
ORDER BY prod_price;