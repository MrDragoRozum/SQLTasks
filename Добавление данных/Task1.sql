--Добавьте самого себя в таблицу Customersс­
--помощью инструкции INSERT. Укажите в явном виде
--все добавляемые столбцы, но только те, для кото­рых предоставляется значение.

SELECT *
FROM Customers c;

INSERT INTO Customers(cust_id, cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country, cust_contact, cust_email)
VALUES(1000000008, 'Vasya Pupkin', 'Ул. водка 22', 'Бухалово', NULL, NULL, 'RU', 'Продавец гаражей', NULL);