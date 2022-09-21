--Вернемся к упражнению 2 из урока 11. Напишите
--инструкцию SQL, возвращающую даты заказов то­вара
--'BR01', но на этот раз с использованием про­стого синтаксиса соединений по равенству. 
--Резуль­тат должен получиться таким же, как и на уроке 11.

-- До
SELECT order_date, cust_id
FROM Orders
WHERE order_num IN
    (SELECT order_num
    FROM OrderItems
    WHERE prod_id = 'BR01')
ORDER BY order_date;

--После
SELECT order_date, cust_id
FROM Orders o INNER JOIN OrderItems oi
ON oi.prod_id = 'BR01' 
AND o.order_num = oi.order_num
ORDER BY order_date;
