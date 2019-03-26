/*Z tabeli Products wybierz (ProductID, ProductName) produkty:

a) nale��ce do kategorii nr 7

b) takie, gdzie cena jednostkowa jest wi�ksza ni� 15

c) w cenie do 10 lub powy�ej 50

d) kt�rych nazwa na drugim miejscu ma liter� �e�*/

--a
Select ProductID, ProductName
From Products
Where CategoryID = 7

--b
Select ProductID, ProductName
From Products
Where UnitPrice > 15

--c
Select ProductID, ProductName
From Products
Where UnitPrice < 10 OR UnitPrice > 50

--d
Select ProductID, ProductName
From Products
Where ProductName Like '_e%'