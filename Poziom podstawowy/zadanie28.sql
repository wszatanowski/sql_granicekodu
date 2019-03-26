Select ROW_NUMBER() OVER (PARTITION BY year(o.OrderDate) Order by count(*) desc ) as 'Nr', s.CompanyName, year(o.OrderDate) as Year, count(*) as Orders
From dbo.Orders as o
join dbo.Shippers as s on s.ShipperID=o.ShipVia
Group by s.CompanyName, YEAR(o.OrderDate)
Order by Year, Orders desc
