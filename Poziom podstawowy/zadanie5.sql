Select Customers.CustomerID, Customers.CompanyName, Count(*) as Zamowienia
From dbo.Customers left join dbo.Orders
On Customers.CustomerID = Orders.CustomerID
Group by Customers.CustomerID, CompanyName
Order by Zamowienia desc