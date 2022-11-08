--Напишите инструкцию SQL, которая возвращает
--имя клиента (поле cust_name таблицы Customers)
--и номера всех его заказов (поле order_num табли­цы Orders)
--c использованием оператора INNER JOIN.


SELECT c.cust_name, o.order_num 
FROM Customers c INNER JOIN Orders o ON c.cust_id = o.cust_id;