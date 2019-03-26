Select OD.OrderID, Count(*) as Produkty, Avg(UnitPrice*Quantity) as Srednia, O.ShipCountry
From dbo.[Order Details] as OD left join dbo.Orders as O
on OD.OrderID = O.OrderID
Group by OD.OrderID, O.ShipCountry
Having OD.OrderID in (10250, 10657, 10710, 10901)
Order by OD.OrderID