Select Top 3 OrderID, SUM(UnitPrice*Quantity) as Suma
From dbo.[Order Details]
Group by OrderID
Order by Suma desc