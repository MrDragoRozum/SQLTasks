--Используйте оператор OUTER JOIN для соедине­ния таблиц Products и Orderltems,
--чтобы полу­чить отсортированный список названий товаров
--(prod_name) и соответствующих им номеров зака­зов (order_num).

SELECT p.prod_name, oi.order_num
FROM Products p LEFT OUTER JOIN OrderItems oi ON p.prod_id = oi.prod_id
ORDER BY 1;
