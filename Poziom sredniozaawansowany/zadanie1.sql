--spos�b 1
Select Top 1 CustomerID, OrderID
From dbo.Orders
Order by OrderID desc

--spos�b 2
Select CustomerID, OrderID
From dbo.Orders
Where OrderID = (Select MAX(OrderId) from dbo.Orders) 