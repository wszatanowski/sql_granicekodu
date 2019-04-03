With Tab as
(
Select o.OrderId, c.CompanyName, os.Subtotal
From dbo.Orders as o
join dbo.Customers as c on c.CustomerID = o.CustomerID
join dbo.[Order Subtotals] as os on os.OrderID = o.OrderID
)

Select Top 20 PERCENT Tab.CompanyName, SUM(Subtotal) as Custsum, 
(Select Sum(Subtotal) from [Order Subtotals]) as TotalSum
From Tab
Group by Tab.CompanyName
Order by Custsum desc