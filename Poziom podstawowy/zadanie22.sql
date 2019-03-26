Select EmployeeID,
case 
when TitleOfCourtesy = 'Ms.' then 'Pani'
when TitleOfCourtesy = 'Mrs.' then 'Pani'
when TitleOfCourtesy = 'Mr.' then 'Pan'
else TitleOfCourtesy
end as Tytu³, concat(FirstName, ' ', LastName) as Pracownik
From dbo.Employees
Where EmployeeID in (1,2,3,6,8,9)