Select OrderID
From dbo.Orders
Order by OrderID
Offset 24 rows fetch next 25 rows only