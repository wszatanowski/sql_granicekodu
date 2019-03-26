Select Title, AVG(Datediff(Year, Birthdate, getdate())) as AvgAge
From dbo.Employees
Group by Title