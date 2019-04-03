Select OrderID, CustomerID
From dbo.Orders
Where CustomerID in (Select CustomerID from dbo.Customers Where Country = 'USA' )
and (OrderID between 10759 and 10924) and OrderID % 2 = 0