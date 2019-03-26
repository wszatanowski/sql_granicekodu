Select e.EmployeeID, e.FirstName, e.LastName, e.Title, count(*) as Orders
From dbo.Employees as e
join dbo.Orders as o
on e.EmployeeID = o.EmployeeID
group by e.EmployeeID, e.FirstName, e.LastName, e.Title
order by Orders desc
