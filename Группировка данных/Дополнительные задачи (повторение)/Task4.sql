--Задача №4
--С таблицы [Order Details] выведите уникальный номер заказа (OrderID) и стоимость заказа(учитывая кол-во штук и скидки). 
--Какое кол-во заказов стоит более 10 000?

SELECT OrderID, SUM(UnitPrice*Quantity*(1-Discount))
FROM [Order Details]
GROUP BY OrderID
HAVING SUM(UnitPrice*Quantity*(1-Discount)) > 10000