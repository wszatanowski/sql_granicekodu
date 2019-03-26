Select YEAR(o.OrderDate) as Rok, MONTH(o.OrderDate) as Miesiac, SUM(od.Quantity*od.UnitPrice) as Sprzedaz
From dbo.Orders as o
join dbo.[Order Details] as od
on o.OrderID = od.OrderID
Where YEAR(o.OrderDate) = 1997
Group by YEAR(o.OrderDate), MONTH(o.OrderDate)
Order by Miesiac