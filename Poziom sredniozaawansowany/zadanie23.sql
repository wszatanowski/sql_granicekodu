Select CompanyName, OrderID, SaleAmount, SaleAmount/Sum(SaleAmount) OVER (PARTITION by CompanyName)*100 as 'Percent', Sum(SaleAmount) OVER (PARTITION by CompanyName) as TotalByCust
From dbo.[Sales Totals by Amount]
Order by CompanyName, OrderID
