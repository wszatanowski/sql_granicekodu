Select distinct CustomerID
From dbo.Orders
Where OrderID in (Select OrderID from dbo.[Order Details] where ProductID = 28) 