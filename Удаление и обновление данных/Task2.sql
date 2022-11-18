--В упражнении 1 на предыдущем уроке вы добавили самого себя в таблицу Customers. 
--Теперь удалите свою запись. Не забудьте использовать предложе­ние WHERE 
--(предварительно протестировав его с помощью инструкции SELECT, прежде чем выпол­нять инструкцию DELETE), 
--иначе вы рискуете уда­лить всех клиентов!

--INSERT INTO Customers(cust_id, cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country, cust_contact, cust_email)
--VALUES(1000000007, 'Vasya Pupkin', 'Ул. водка 22', 'Бухалово', NULL, NULL, 'RU', 'Продавец гаражей', NULL);

DELETE FROM Customers
WHERE cust_id = 1000000007;

--SELECT *
--FROM Customers c;

