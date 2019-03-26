Select CustomerID, OrderID, EmployeeID
From dbo.Orders
Where (EmployeeID = 1 or EmployeeID = 3 or EmployeeID = 9) and CustomerID = 'SAVEA'
-- mo¿na te¿ tak: WHERE CustomerID = 'SAVEA' AND EmployeeID IN(1, 3, 9)