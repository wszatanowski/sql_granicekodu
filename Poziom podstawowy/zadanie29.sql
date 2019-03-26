Select CustomerID, MIN(OrderID) as FirstOrder, MIN(OrderDate) as FirstOrderDate
From dbo.Orders
Group by CustomerID
Order by CustomerID
