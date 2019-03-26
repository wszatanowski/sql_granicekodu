Select e.EmployeeID as ID, e.LastName, e.Title, sum(od.Quantity*od.UnitPrice) as Sprzedaz
From dbo.Employees as e
join dbo.Orders as o on e.EmployeeID = o.EmployeeID
join dbo.[Order Details] as od on o.OrderID = od.OrderID
where year(o.OrderDate) = 1997
group by e.EmployeeID, e.LastName, e.Title
order by Sprzedaz desc