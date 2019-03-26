Select OrderId, COUNT(*) as Ilosc
From dbo.[Order Details]
Group by OrderID
Having COUNT(*) >= 5
Order by Ilosc desc