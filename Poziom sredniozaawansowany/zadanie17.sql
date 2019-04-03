With SalesSummary as
(
Select ode.OrderID, st.SaleAmount, st.CompanyName, ode.ProductID, ode.ProductName, ode.UnitPrice, ode.Quantity, ode.Discount, ode.ExtendedPrice, st.ShippedDate
From [Sales Totals by Amount] as ST
join [Order Details Extended] as ODE on ode.OrderID = st.OrderID
)

Select *, (Select CustomerID from dbo.Customers as c where c.CompanyName = SalesSummary.CompanyName) as 'CustomerID'
from SalesSummary