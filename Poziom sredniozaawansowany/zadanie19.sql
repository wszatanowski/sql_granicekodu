--1
Select Country, City
From dbo.Customers

INTERSECT

Select Country, City
From dbo.Suppliers

--2
Select Country, City
From dbo.Customers

UNION

Select Country, City
From dbo.Suppliers

EXCEPT

Select Country, City
From dbo.Employees

--3
Select Country, City
From dbo.Customers

INTERSECT

Select Country, City
From dbo.Employees

EXCEPT

Select Country, City
From dbo.Suppliers