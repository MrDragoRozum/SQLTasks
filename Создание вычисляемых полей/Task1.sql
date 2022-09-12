--Псевдонимы обычно применяются для переимено­
--вания полей в результатах запроса. Напишите ин­струкцию SQL,
--которая извлекает поля vend_id,
--vend_name, vend_address и vend_city из табли­цы Vendors,
--переименовывая vend_name в vname,
--vend_city в vcity и vend_address в vaddress.
--Отсортируйте результаты по имени поставщика.

SELECT vend_id, 
	vend_name AS vname, 
	vend_city AS vcity,
	vend_address AS vaddress
FROM Vendors
ORDER BY vname;
