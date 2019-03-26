Select s.SupplierID, s.CompanyName, p.ProductName
From dbo.Suppliers as s
join dbo.Products as p
on s.SupplierID = p.SupplierID
where ProductName = 'tofu'