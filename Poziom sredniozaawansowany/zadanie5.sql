select customerid, min(OrderID) as FirstOrder, max(orderid) as LastOrder
from dbo.Orders
where customerid in (select CustomerID from dbo.Customers where Country = 'Germany')
group by customerid
