--Задача №4 
--Выведите имя и фамилию сотрудника, который оформил/принял заказ клиента, которого зовут Francisco Chang.

SELECT DISTINCT E1.FirstName + ' ' + E1.LastName AS clients
FROM Employees AS E1 INNER JOIN Orders O1 ON E1.EmployeeID = O1.EmployeeID
                     INNER JOIN Customers C1 ON C1.CustomerID = O1.CustomerID
WHERE C1.ContactName = 'Francisco Chang';
