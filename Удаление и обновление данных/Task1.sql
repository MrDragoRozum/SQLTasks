--Аббревиатуры штатов США должны записываться прописными буквами. 
--Напишите инструкцию SQL, которая обновляет все адреса, относящиеся к США, 
--чтобы как штат поставщика (поле vend_state таблицы Vendors), так и штат клиента 
--(поле cust_state таблицы Customers) были записаны в верхнем регистре.

UPDATE Vendors
SET vend_state = UPPER(vend_state)
WHERE vend_country = 'USA';

UPDATE Customers
SET cust_state = UPPER(cust_state)
WHERE cust_country = 'USA';

