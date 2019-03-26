/*Z tabeli Orders wybierz (OrderID, CustomerID) zam�wienia:

a) dostarczone mi�dzy 1 maja a 15 pa�dziernika 1997

b) dostarczone do Australii, Niemiec i Wielkiej Brytanii

c) obs�ugiwane przez przewo�nika o id 2

d) dostarczone do miast, kt�rych nazwa zaczyna si� na litery od A, B, C i D*/

--a
Select OrderID, CustomerID
From dbo.Orders
Where ShippedDate between '1997-05-01' and '1997-10-15'

--b
Select OrderID, CustomerID
From dbo.Orders
Where ShipCountry in ('Australia', 'Germany', 'UK')

--c
Select OrderID, CustomerID
From dbo.Orders
Where ShipVia = 2

--d
Select OrderID, CustomerID
From dbo.Orders
Where ShipCity Like '[A-D]%'