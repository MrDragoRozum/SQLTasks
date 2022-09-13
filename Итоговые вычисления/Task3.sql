--Напишите инструкцию SQL, возвращающую стои­мость
--(prod_price) самого дорогого товара в та­блице Products,
--цена на который не превышает 10.
--Назовите вычисляемое поле max_price.

SELECT MAX(prod_price) AS max_price 
FROM Products p 
WHERE prod_price <= 10;
