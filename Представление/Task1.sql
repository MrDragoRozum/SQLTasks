--Создайте представление CustomersWithOrders,
--включающее все столбцы из таблицы Customers,
--но содержащее записи только тех клиентов, кото­рые разместили заказы.

CREATE VIEW CustomersWithOrders AS
SELECT c.*
FROM Customers c INNER JOIN Orders o ON c.cust_id = o.cust_id;

