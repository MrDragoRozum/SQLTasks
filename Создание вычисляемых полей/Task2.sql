--В нашем магазине проводится распродажа, и все
--товары подешевели на 10%. Напишите инструкцию
--SQL, которая возвращает поля prod_id , prod_price
--и sale_price из таблицы Products, где
--sale_price — это вычисляемое поле скидочной цены.

SELECT prod_id, prod_price, prod_price*0.9 AS sale_price  
FROM Products
