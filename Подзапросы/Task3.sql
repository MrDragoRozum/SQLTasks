--Давайте усложним задачу. Модифицируйте преды­
--дущую инструкцию, чтобы она возвращала адрес
--электронной почты клиента (поле cust_email таблицы Customers)
--для любого клиента, купив­шего товар с идентификатором 'BR01'.

SELECT cust_email 
FROM Customers
WHERE cust_id IN(
    SELECT cust_id
    FROM Orders
    WHERE order_num IN(
        SELECT order_num
        FROM OrderItems
        WHERE prod_id = 'BR01'));
