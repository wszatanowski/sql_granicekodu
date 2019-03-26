Select p.ProductID, p.ProductName, count(*) as Zamowienia
from dbo.[Order Details] as od
join dbo.Products as p on p.ProductID = od.ProductID
group by p.ProductID, p.ProductName
having COUNT(*) > 40
order by Zamowienia desc