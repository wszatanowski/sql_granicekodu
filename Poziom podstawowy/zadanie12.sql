Select ShipCountry
From dbo.Orders
Where Year(ShippedDate) = 1997
Group by ShipCountry

-- mo¿na te¿ SELECT DISTINCT ShipCountry zamiast WHERE