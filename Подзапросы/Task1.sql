--Используйте подзапрос для получения списка
--клиентов, которые купили товары по цене 10 или
--выше. Найдите соответствующие номера заказов
--(order_num) в таблице OrderItems, а затем ис­пользуйте таблицу Orders,
--чтобы найти клиент­
--ские идентификаторы (cust_id) для этих заказов.

SELECT cust_id 
FROM Orders o 
WHERE order_num IN
  (SELECT order_num
  FROM OrderItems oi
  WHERE item_price >= 10);
