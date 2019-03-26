Select Country, Count(*) as Klienci
From dbo.Customers
Group by Country
Order by Klienci desc