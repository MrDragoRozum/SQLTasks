--Задача №4
--Клиент Simon Crowther утверждает, что оформил заказ 29 апреля 1998 года, 
--но заказ пришел неполный - часть товаров отсутствует. 
--Найдите всю информацию по сотруднику, оформившему этот заказ, чтобы связаться с ним.
--Как зовут этого сотрудника?

SELECT FirstName + ' ' + LastName
FROM Orders AS O INNER JOIN Customers AS C ON O.CustomerID = C.CustomerID
                   INNER JOIN Employees AS E ON E.EmployeeID = O.EmployeeID
WHERE C.ContactName = 'Simon Crowther' AND O.OrderDate = '1998-04-29';
