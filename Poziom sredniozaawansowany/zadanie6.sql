Select OrderID, CustomerID, EmployeeID
From dbo.orders
Where CustomerID in (Select CustomerID from dbo.Customers where Country = 'USA')
and EmployeeID in (Select EmployeeID from dbo.Employees where Title= 'Sales Representative')
Order by CustomerID, OrderID