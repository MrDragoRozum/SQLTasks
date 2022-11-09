--Модифицируйте предыдущую инструкцию SQL,
--чтобы получить общее количество заказов по ка­ждому товару (а не номера заказов).

SELECT p.prod_name, COUNT(oi.order_num) as orders
FROM Products p LEFT OUTER JOIN OrderItems oi ON p.prod_id = oi.prod_id
GROUP BY p.prod_name
ORDER BY 1;