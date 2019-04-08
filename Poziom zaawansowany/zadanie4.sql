/*
1. Skopiuj tabel� dbo.Orders za pomoc� SELECT INTO (tworz�c tabel� dbo.Ord2).
2. Tabeli dbo.Ord2 przypisz klucz g��wny na kolumnie OrderID
3. Dodaj kolumn� ShipDelay, w kt�rej okre�limy, czy towar zosta� dostarczony na czas.
4. Wype�nij kolumn� ShipDelay danymi (RequiredDate � ShippedDate)
5. Zmodyfikuj tabel� wstawiaj�c 0 (zero) tam, gdzie nie by�o op�nie� w dostawie.
6. Sprawd�, czy s� klienci kt�rzy dostali towar z op�nieniem, oraz czy z�o�yli jeszcze jakie� zam�wienia (p�niej).
*/

--1
Select *
into dbo.Ord2
from dbo.Orders

--2 
alter table dbo.Ord2
add constraint OrderId
primary key (OrderId)

--3
alter table dbo.Ord2 add ShipDelay int;

--4
update dbo.Ord2
set ShipDelay = datediff(day, RequiredDate, ShippedDate)

--5
update dbo.Ord2
set ShipDelay = 0
where ShipDelay < 0

--6
select * from dbo.Ord2
where Shipdelay > 0 or Shipdelay is NULL