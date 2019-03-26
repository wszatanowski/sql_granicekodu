Select FirstName, LastName, DATEDIFF(year, Birthdate, GETDATE()) as Wiek
From dbo.Employees
Order by Wiek desc