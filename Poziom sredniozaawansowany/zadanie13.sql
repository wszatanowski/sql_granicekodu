--1
Select OrderId, Sum(UnitPrice*Quantity) as Suma
from dbo.[Order Details]
Group by OrderID
Order by Suma desc

--2
Select Tab.OrderID, Tab.Suma, o.CustomerID from 
(Select OrderId, Sum(UnitPrice*Quantity) as Suma
from dbo.[Order Details]
Group by OrderID) as Tab
join dbo.Orders as o on o.OrderID = tab.OrderID
Where Tab.Suma >= 10000
Order by Suma desc