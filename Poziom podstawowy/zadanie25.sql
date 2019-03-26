Select CompanyName, ContactName,
Case 
	When Fax is Null Then Phone
	Else CONCAT(Phone,', Fax:',Fax)
End as 'Phone Number'
From dbo.Customers
Where Country = 'UK'