/*
1. Skopiuj tabelê dbo.Orders za pomoc¹ SELECT INTO (tworz¹c tabelê dbo.Ord2).
2. Tabeli dbo.Ord2 przypisz klucz g³ówny na kolumnie OrderID
3. Dodaj kolumnê ShipDelay, w której okreœlimy, czy towar zosta³ dostarczony na czas.
4. Wype³nij kolumnê ShipDelay danymi (RequiredDate – ShippedDate)
5. Zmodyfikuj tabelê wstawiaj¹c 0 (zero) tam, gdzie nie by³o opóŸnieñ w dostawie.
6. SprawdŸ, czy s¹ klienci którzy dostali towar z opóŸnieniem, oraz czy z³o¿yli jeszcze jakieœ zamówienia (póŸniej).
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