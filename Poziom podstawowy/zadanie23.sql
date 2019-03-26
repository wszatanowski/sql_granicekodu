Select EmployeeID,
Case
	when count(OrderID) > 100 then 'Wiêcej ni¿ 100'
	when count(OrderID) >= 50 then 'Miêdzy 50 a 100'
	else 'Mniej ni¿ 50'
End as Zamowienia
From dbo.Orders
Group by EmployeeID