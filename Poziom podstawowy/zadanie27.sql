Select CompanyName, ContactName, REPLACE(Phone,'.','-') as 'Phone'
From dbo.Customers
Where Country = 'France'