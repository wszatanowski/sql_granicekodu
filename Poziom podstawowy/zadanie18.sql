Select s.Country, s.CompanyName, p.ProductName
From dbo.Suppliers as s
join dbo.Products as p
on s.SupplierID = p.SupplierID
order by s.Country, s.CompanyName, p.ProductName