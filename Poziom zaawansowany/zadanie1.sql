/*
1. Ca³¹ zawartoœæ tabeli dbo.Employees (baza Northwind) przekopiuj do dbo.Emp1 (za pomoc¹ polecenia SELECT INTO). W dalszej czêœci modyfikujemy tabelê dbo.Emp1.
2. Dla pracownika o ID 3, do imienia dodaj ‘A.’ (np. Jan -> Jan A.)
3. Pracownikowi o ID 8 zmieñ nazwisko na Smith.
4. Usuñ dwóch najstarszych pracowników (wg daty urodzenia).
5. Po wykonaniu æwiczeñ usuñ tabelê dbo.Emp1
*/
--1
Select * into dbo.Emp1
from dbo.Employees

--2
update dbo.Emp1
set FirstName = FirstName + ' A.'
where EmployeeID = 3

--3
update dbo.Emp1
set LastName = 'Smith'
where EmployeeID = 8

--4
delete from dbo.Emp1
where EmployeeID in (select top 2 EmployeeID from dbo.emp1 order by BirthDate)

select * from dbo.Emp1
--5
drop table emp1