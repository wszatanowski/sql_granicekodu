Declare @sum as Integer = 10000;
Select OrderId, Subtotal
From dbo.[Order Subtotals]
Where Subtotal between @sum * 0.9 and @sum * 1.1
Order by Subtotal