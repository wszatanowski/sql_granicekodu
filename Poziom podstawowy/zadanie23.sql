Select EmployeeID,
Case
	when count(OrderID) > 100 then 'Wi�cej ni� 100'
	when count(OrderID) >= 50 then 'Mi�dzy 50 a 100'
	else 'Mniej ni� 50'
End as Zamowienia
From dbo.Orders
Group by EmployeeID