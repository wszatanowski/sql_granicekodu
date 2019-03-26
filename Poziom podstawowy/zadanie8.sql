Select CategoryID, Count(*) as Ilosc, Max(UnitPrice) as MaxCena
from dbo.Products
Group by CategoryID