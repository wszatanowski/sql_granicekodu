--a
Select EmployeeID, FirstName, LastName
From dbo.Employees
Where Country = 'UK'

--b
Select EmployeeID, FirstName, LastName
From dbo.Employees
Where City != 'London'

--c
Select EmployeeID, FirstName, LastName
From dbo.Employees
Where BirthDate >= '1961-01-01'

--d
Select EmployeeID, FirstName, LastName, TitleOfCourtesy
From dbo.Employees
Where TitleOfCourtesy = 'Mr.'