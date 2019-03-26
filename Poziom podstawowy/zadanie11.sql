Select Year(o.OrderDate) as Rok, c.CategoryName, Count(*) as Zamowienia
From dbo.Orders as O
join dbo.[Order Details] as OD on o.OrderID = od.OrderID
join dbo.Products as P on p.ProductID = od.ProductID
join dbo.Categories as C on c.CategoryID = p.CategoryID
group by Year(o.OrderDate), c.CategoryName
Order by Rok, CategoryName