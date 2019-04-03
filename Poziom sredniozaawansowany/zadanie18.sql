--1
Select CompanyName, Country, City
From dbo.Customers

Union all

Select CompanyName, Country, City
From dbo.Suppliers

--2
Select 'Customer' as 'Type', CompanyName, Country, City
From dbo.Customers

Union all

Select 'Supplier' as 'Type', CompanyName, Country, City
From dbo.Suppliers

Order by Type, Country, City