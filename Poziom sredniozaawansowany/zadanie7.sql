Select SupplierID, CompanyName
From dbo.Suppliers
Where SupplierID in (Select SupplierID from dbo.Products
Where ProductID in (Select ProductID from dbo.[Order Details] where OrderID=10337))
