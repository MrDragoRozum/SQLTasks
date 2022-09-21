--Продолжим в том же духе. Перепишите запрос из
--упражнения 3 урока 11, на этот раз с использова­нием синтаксиса ANSI (оператор INNER JOIN).
--Предыдущая инструкция содержала два вложен­ных запроса.
--Теперь вам понадобятся два опера­тора INNER JOIN, с которыми вы познакомились
--на данном уроке. И не забудьте выполнить филь­трацию по полю prod_id с помощью предложения WHERE.

-- До
SELECT cust_email 
FROM Customers
WHERE cust_id IN(
    SELECT cust_id
    FROM Orders
    WHERE order_num IN(
        SELECT order_num
        FROM OrderItems
        WHERE prod_id = 'BR01'));

-- После
SELECT cust_email
FROM Customers c INNER JOIN Orders o INNER JOIN OrderItems oi
ON c.cust_id = o.cust_id AND oi.order_num = o.order_num AND oi.prod_id = 'BR01';
