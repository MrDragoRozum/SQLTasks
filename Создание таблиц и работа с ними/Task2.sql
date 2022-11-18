--Используйте инструкцию UPDATE для обновления
--таблицы Vendors, добавив в нее адрес какого-ни­будь сайта (можете использовать любой адрес).

UPDATE Vendors
SET vend_web = 'google.com'
WHERE vend_id = 'BRS01';