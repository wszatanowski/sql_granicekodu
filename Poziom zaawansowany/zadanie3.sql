/*
1. Utwórz sekwencjê (dbo.MySequence) typu INT, o wartoœci minimalnej 1, z inkrementacj¹ o 1.
2. Utwórz tabelê (dbo.Zabawki) zawieraj¹c¹ kolumny: ID (INT, domyœlna wartoœæ to kolejna wartoœæ z sekwencji), KodProduktu (INT, NOT NULL), NazwaProduktu (VARCHAR(20), NOT NULL), Cena (INT, NOT NULL), Kategoria (VARCHAR(15), NOT NULL)
3. Wype³nij tabelê danymi (kod produktu, nazwa, cena, kategoria):
4. Usuñ najdro¿szy produkt z ka¿dej kategorii.
5. Do tabeli dodaj kolumnê Rabat, z wartoœci¹ domyœln¹ 0.
6. Przyznaj rabat wysokoœci 15% produktom o kodzie 12082, 12067.
7. Ustaw wartoœæ rabatu na zero wszêdzie tam, gdzie ma ma ona wartoœæ NULL.
8. Usuñ tabelê dbo.Zabawki oraz sekwencjê dbo.MySequence.
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
