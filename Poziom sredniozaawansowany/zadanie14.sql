--1
with ShortOrd as
(
Select OrderID, CustomerID, EmployeeID, OrderDate, ShipVia
From dbo.Orders
)

--2
Select so.OrderId, so.CustomerID, os.Subtotal as 'Sum',sh.CompanyName as Shipper
from ShortOrd as SO
join dbo.[Order Subtotals] as OS on os.OrderID = so.OrderID
join dbo.Shippers as SH on sh.ShipperID = so.ShipVia
Where Year(so.OrderDate) = 1996
Order by CustomerID