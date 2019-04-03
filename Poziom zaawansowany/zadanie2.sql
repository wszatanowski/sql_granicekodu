/*
1. Utw�rz tabel� (u mnie nazywa si� Tab1) zawieraj�c� trzy kolumny: id (b�d�c� identyfikatorem, zaczynaj�cym od warto�ci 1 z inkrementacj� o 1), orderid (typ numeryczny), company (typ tekstowy). �adna z kolumn nie przyjmuje warto�ci NULL.
2. Utworzon� tabel� wype�nij danymi, pochodz�cymi z tabeli dbo.Orders; niech b�dzie to 10 najnowszych zam�wie� (OrderID) oraz odpowiadaj�ce im firmy (CustomerID).
3. Dodaj wiersz z numerem zam�wienia 11078 i firm� LILAS.
4. Usu� pierwsze trzy wiersze (id od 1 do 3).
5. Zmie� nazw� firmy z LILAS na ABCDE.
6. Zwr�� przedostatni dodany rekord (bazuj�c na identyfikatorze id).
7. Usu� tabel� stworzon� w punkcie 1.
*/

--1
create table Tab1
(
id int primary key identity,
orderid int not null,
company varchar(20) not null
)

--2
insert top(10) into Tab1 (orderid, company)
select OrderID, CustomerID
from dbo.Orders
order by OrderID desc

--3
insert into dbo.Tab1 values (11078, 'LILAS')

--4
delete from dbo.Tab1 where id in (1,2,3)

--5
update dbo.Tab1
set company = 'ABCDE' where company ='LILAS'

--6
select top(1) * from Tab1
where id < (select max(id) from Tab1)
order by id desc

--7
drop table Tab1