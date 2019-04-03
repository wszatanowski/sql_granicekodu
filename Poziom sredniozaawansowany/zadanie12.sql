Select Top 15 with ties *
From (Select ProductID, Count(ProductID) as Ordrs
From dbo.[Order Details]
Group by ProductID) as Tab
Order by Ordrs desc