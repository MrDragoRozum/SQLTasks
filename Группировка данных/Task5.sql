--Что неправильного в следующей инструкции SQL?
--(Постарайтесь понять это, не выполняя саму ин­струкцию.)

SELECT order_num, COUNT(*) AS items
FROM OrderItems
GROUP BY items
HAVING COUNT(*) >= 3
ORDER BY items, order_num;

-- Нельзя использовать псевдонимы в предложении GROUP BY. 
-- Правильно будет, если вместо items указать order_num:

SELECT order_num, COUNT(*) AS items
FROM OrderItems
GROUP BY order_num
HAVING COUNT(*) >= 3
ORDER BY items, order_num;
