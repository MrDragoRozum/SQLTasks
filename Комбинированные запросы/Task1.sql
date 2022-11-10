--Напишите инструкцию SQL, которая объединя­ет две инструкции SELECT, 
--возвращающие иден­тификатор товара (prod_id) и его количество
--(quantity) из таблицы Orderltems, причем однаинструкция должна отбирать строки,
--в которых количество равно 100, а вторая должна отбирать товары, 
--идентификатор которых начинается с пре­фикса 'BNBG'. 
--Отсортируйте результаты по иден­тификатору товара.

SELECT prod_id, quantity
FROM OrderItems oi
WHERE quantity = 100
UNION
SELECT prod_id, quantity
FROM OrderItems oi
WHERE prod_id LIKE 'BNBG%'
ORDER BY prod_id;