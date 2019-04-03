Select OrderID, Subtotal
From dbo.[Order Subtotals]
Where Subtotal > (select AVG(Subtotal)*3 from dbo.[Order Subtotals])