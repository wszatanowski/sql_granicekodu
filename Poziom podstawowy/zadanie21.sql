select o.CustomerID, o.OrderID, (od.Quantity*od.UnitPrice) as OrdVal, ROW_NUMBER() OVER(PARTITION BY O.CustomerID ORDER BY (OD.UnitPrice * OD.Quantity) DESC ) as num
From dbo.Orders as o
join dbo.[Order Details] as od
on od.OrderID = o.OrderID
where o.CustomerID in ('ALFKI', 'ISLAT', 'SAVEA')
order by o.CustomerID, OrdVal desc