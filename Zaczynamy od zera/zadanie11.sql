/*Z tabeli Orders wybierz (OrderID, CustomerID) zamówienia:

a) dostarczone miêdzy 1 maja a 15 paŸdziernika 1997

b) dostarczone do Australii, Niemiec i Wielkiej Brytanii

c) obs³ugiwane przez przewoŸnika o id 2

d) dostarczone do miast, których nazwa zaczyna siê na litery od A, B, C i D*/

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