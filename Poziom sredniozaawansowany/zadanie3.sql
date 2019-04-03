--1 sposób
Select distinct CustomerID
From dbo.Orders
Group by CustomerID
Having MIN(YEAR(OrderDate)) > 1996

--2 sposób
Select distinct CustomerID
From dbo.Orders
Where (CustomerID in (Select CustomerID from dbo.orders where OrderDate > '1996-12-31')
and CustomerID not in (Select CustomerID from dbo.Orders where OrderDate <= '1996-12-31' and OrderDate > '1995-12-31' ))
order by CustomerID
