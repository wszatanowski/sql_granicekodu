Select Year(OrderDate) as Rok, Month(OrderDate) as Miesiac, Count(*) as Zamowienia
From dbo.Orders
Group by Year(OrderDate), Month(OrderDate)
Order by Rok, Miesiac