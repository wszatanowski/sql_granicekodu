Select Country, City, CompanyName
From dbo.Customers
Where Country Like 'A%' or Country Like 'B%'
Order by Country, City

-- mo¿na te¿ tak: WHERE Country LIKE '[A-B]%'