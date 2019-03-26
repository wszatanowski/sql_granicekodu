Select Distinct Region, City, Right(Left(Phone, Charindex(')',Phone)-1),Len(Left(Phone, Charindex(')',Phone)-2))) as Kierunkowy
From dbo.Customers
Where Region <> '' and Country='USA'
Order by Region, City