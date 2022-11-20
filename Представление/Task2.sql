--Что неправильного в следующей инструкции SQL?
--(Постарайтесь понять это, не выполняя саму ин­струкцию.)

CREATE VIEW OrderItemsExpanded AS
SELECT order_num,
	prod_id,
	quantity,
	item_price,
	quantity*item_price AS expanded_price
FROM Orderltems
ORDER BY order_num; -- Нельзя использовать ORDER BY в VIEW


-- Правильная инструкция
CREATE VIEW OrderItemsExpanded AS
SELECT order_num,
	prod_id,
	quantity,
	item_price,
	quantity*item_price AS expanded_price
FROM Orderltems;
