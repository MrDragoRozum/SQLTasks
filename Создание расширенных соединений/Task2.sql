--Модифицируйте предыдущую инструкцию SQL
--для получения списка всех клиентов, даже тех, кто
--еще не сделал ни одного заказа.

SELECT c.cust_name, o.order_num 
FROM Customers c LEFT OUTER JOIN Orders o ON c.cust_id = o.cust_id;