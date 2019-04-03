/*
1. Utwórz tabelê (u mnie nazywa siê Tab1) zawieraj¹c¹ trzy kolumny: id (bêd¹c¹ identyfikatorem, zaczynaj¹cym od wartoœci 1 z inkrementacj¹ o 1), orderid (typ numeryczny), company (typ tekstowy). ¯adna z kolumn nie przyjmuje wartoœci NULL.
2. Utworzon¹ tabelê wype³nij danymi, pochodz¹cymi z tabeli dbo.Orders; niech bêdzie to 10 najnowszych zamówieñ (OrderID) oraz odpowiadaj¹ce im firmy (CustomerID).
3. Dodaj wiersz z numerem zamówienia 11078 i firm¹ LILAS.
4. Usuñ pierwsze trzy wiersze (id od 1 do 3).
5. Zmieñ nazwê firmy z LILAS na ABCDE.
6. Zwróæ przedostatni dodany rekord (bazuj¹c na identyfikatorze id).
7. Usuñ tabelê stworzon¹ w punkcie 1.
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