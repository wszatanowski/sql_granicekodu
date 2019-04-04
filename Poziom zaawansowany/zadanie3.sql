/*
1. Utw�rz sekwencj� (dbo.MySequence) typu INT, o warto�ci minimalnej 1, z inkrementacj� o 1.
2. Utw�rz tabel� (dbo.Zabawki) zawieraj�c� kolumny: ID (INT, domy�lna warto�� to kolejna warto�� z sekwencji), KodProduktu (INT, NOT NULL), NazwaProduktu (VARCHAR(20), NOT NULL), Cena (INT, NOT NULL), Kategoria (VARCHAR(15), NOT NULL)
3. Wype�nij tabel� danymi (kod produktu, nazwa, cena, kategoria):
4. Usu� najdro�szy produkt z ka�dej kategorii.
5. Do tabeli dodaj kolumn� Rabat, z warto�ci� domy�ln� 0.
6. Przyznaj rabat wysoko�ci 15% produktom o kodzie 12082, 12067.
7. Ustaw warto�� rabatu na zero wsz�dzie tam, gdzie ma ma ona warto�� NULL.
8. Usu� tabel� dbo.Zabawki oraz sekwencj� dbo.MySequence.
*/

--1
create sequence dbo.Mysequence as int
start with 1
increment by 1
minvalue 1

--2
create table dbo.Zabawki
(
ID int default (next value for dbo.Mysequence) not null,
KodProduktu int not null,
NazwaProduktu varchar(20) not null,
Cena int not null,
Kategoria varchar(15) not null
)

--3
insert into dbo.Zabawki(KodProduktu, NazwaProduktu, Cena, Kategoria) values
(12064, 'Lego Technic', 565, 'Zabawki'),
(12065, 'Lego City', 129, 'Zabawki'),
(12066, 'Lego City', 155, 'Zabawki'),
(12067, 'Lego Technic', 499, 'Zabawki'),
(12080, 'Need For Speed', 99, 'Gry'),
(12081, 'Tomb Raider', 99, 'Gry'),
(12082, 'The Sims', 159, 'Gry'),
(12083, 'Diablo', 179, 'Gry')

--4
delete from dbo.Zabawki
where cena in (
	select max(cena)
	from dbo.Zabawki
	group by Kategoria
)

--5
alter table dbo.Zabawki
add Rabat float default(0)

--6
update dbo.Zabawki set Rabat = 0.15
where KodProduktu in (12082, 12067)

--7
update dbo.Zabawki set Rabat = 0 where Rabat is NULL

--8
select * from dbo.Zabawki
drop table dbo.zabawki
drop sequence dbo.Mysequence
