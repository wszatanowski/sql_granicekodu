select top 5 c.CustomerID, c.CompanyName, sum(od.Quantity*od.UnitPrice) as Suma
from dbo.Customers as c
join dbo.Orders as o on o.CustomerID = c.CustomerID
join dbo.[Order Details] as od on od.OrderID = o.OrderID
group by c.CustomerID, c.CompanyName
order by Suma desc