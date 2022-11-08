--Задача №1
--Посчитайте кол-во заказов, оформленных сотрудником Andrew Fuller.

SELECT COUNT(*)
FROM [dbo].[Employees] AS E1 INNER JOIN Orders AS O1 ON E1.EmployeeID = O1.EmployeeID
WHERE E1.FirstName = 'Andrew' AND E1.LastName = 'Fuller';