Select o.CustomerID, o.OrderID
From dbo.Orders as o join dbo.Customers as c
on o.CustomerID = c.CustomerID
Where c.CustomerID in (Select c.CustomerID where c.City = 'London')