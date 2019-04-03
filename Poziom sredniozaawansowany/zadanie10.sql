Declare @miasto as nvarchar(20) = 'Ey';

with SuppliersByCity as
(
Select SupplierID, CompanyName, City, Country
From dbo.Suppliers
Where City Like '%' + @miasto + '%'
)
Select * from SuppliersByCity



