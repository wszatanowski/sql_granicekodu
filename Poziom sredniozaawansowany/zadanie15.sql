--1
Select o.OrderId, c.CompanyName, os.Subtotal
From dbo.Orders as o
join dbo.Customers as c on c.CustomerID = o.CustomerID
join dbo.[Order Subtotals] as os on os.OrderID = o.OrderID

--2
Select o.OrderId,
(Select c.CompanyName from dbo.Customers as c where c.CustomerID = o.CustomerID) as 'CompanyName',
(Select os.Subtotal from dbo.[Order Subtotals] as os where os.OrderID = o.OrderId) as 'Subtotal'
From dbo.Orders as o