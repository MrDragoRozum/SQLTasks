--Что неправильного в следующей инструкции SQL?
--(Постарайтесь понять это, не выполняя саму ин­струкцию.)

--Ошибка в предложении ORDER BY -- оно должно находится под WHERE

SELECT vend_name
FROM Vendors
ORDER BY vend_name
WHERE vend_country = 'USA' AND vend_state = 'CA';

--Првильное решение

SELECT vend_name
FROM Vendors
WHERE vend_country = 'USA' AND vend_state = 'CA'
ORDER BY vend_name;
