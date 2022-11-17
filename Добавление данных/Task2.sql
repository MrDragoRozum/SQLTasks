--Создайте резервные копии таблиц Orders и OrderItems.

CREATE TABLE CopyOrders AS SELECT * FROM Orders o;
CREATE TABLE CopyOrderItems AS SELECT * FROM OrderItems oi;
