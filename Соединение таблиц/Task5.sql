--На этот раз ради интереса попробуем применить
--соединения, итоговые функции и группирование
--данных. На уроке 10 вы написали запрос для на­хождения всех номеров заказов,
--стоимость кото­рых составляла не менее 1000. Хотелось бы также
--узнать имена клиентов, сделавших такие заказы.
--Напишите инструкцию SQL, использующую соеди­нения
--для получения имени клиента (cust_name)
--из таблицы Customers и общей стоимости всех
--его заказов из таблицы OrderItems. Подсказка:
--в соединение придется также включить таблицу
--Orders, поскольку таблица Customers не связана
--напрямую с таблицей OrderItems; вместо этого
--она связана с таблицей Orders, которая, в свою оче­редь, связана с таблицей OrderItems.
--Не забудьтеприменить предложения GROUP BY и HAVING, а
--также отсортировать результаты по имени кли­ента. Можно использовать как простой синтаксис
--соединений по равенству, так и синтаксис ANSI с
--оператором INNER JOIN. А еще лучше, напишите оба варианта.

SELECT order_num, SUM(quantity*item_price) AS total_price
FROM OrderItems
GROUP BY order_num
HAVING SUM(quantity*item_price) >= 1000
ORDER BY order_num;

-- ANSI
SELECT c.cust_name,  SUM(quantity*item_price) AS total_price
FROM OrderItems oi INNER JOIN Customers c INNER JOIN Orders o
ON o.cust_id = c.cust_id AND oi.order_num = o.order_num
GROUP BY c.cust_name
HAVING SUM(quantity*item_price) >= 1000
ORDER BY c.cust_name;

-- Соединение по равенству 
SELECT c.cust_name, SUM(quantity*item_price) AS total_price
FROM OrderItems oi, Customers c, Orders o
WHERE o.cust_id = c.cust_id AND oi.order_num = o.order_num
GROUP BY c.cust_name 
HAVING SUM(quantity*item_price) >= 1000
ORDER BY c.cust_name;
