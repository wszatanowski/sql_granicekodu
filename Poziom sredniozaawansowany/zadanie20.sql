With Tab as
(
Select City, Country
From dbo.Suppliers
Intersect
Select City, Country
From dbo.Customers
)

Select s.SupplierID, s.CompanyName, s.City, c.CustomerID, c.CompanyName
From dbo.Suppliers as s
join dbo.Customers as c on c.City = s.City
Where c.City in (Select City from Tab)