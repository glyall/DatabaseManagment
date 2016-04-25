Create table ActorsPhysical
(
"Name(First,Last)" varchar(100) NOT NULL , 
"Hair Color" varchar (30),
"Eye Color" varchar(30),
"Height (Inches)" int NOT NULL ,
"Weight (Pounds)" int Not Null 
);

Drop Table ActorsPhysical
Select * 
from ActorsPhysical
Alter Table ActorsPhysical 
ADD Primary Key ("Name(First,Last)")

Create table ActorsPersonal
(
"Name(First,Last)" varchar(100)NOT NULL,
"Home Address" varchar(100),
"Spouse Name" varchar(100),
"Favorite Color" varchar(30),
"S.A.G.A.D" int  NOT NUll,
"Past Movies" Character(300),
"Favorite Director" character(300)
);

Drop Table ActorsPersonal
Select * 
From ActorsPersonal 

Alter Table ActorsPersonal
Add Primary Key ("Name(First,Last)")

Create table MovieSales
(
"Name(First,Last)" varchar (100),
"B-ray Sales" int,
"Dvd Sales" int ,
"Downloads" int,
"Domestic Sales" int,
"Foregin Sales" int,
"MPAA Number" int Not Null
);
Drop Table MovieSales
Select * 
From MovieSales 
Alter Table MovieSales 
Add Primary Key ("MPAA Number")

Create table MovieData
(
"Name" varchar (100),
"Year Of Release (Y.O.R)" int Not Null,
"MPAA Number" int Not Null, /* Pirmary Key*/
"Cast" varchar (200)
);

Drop table MovieData
Select * 
From MovieData;
Alter Table MovieData
Add Primary Key ("MPAA Number")

Create table DirectorPersonal
(
"Name(First,Last)" varchar (30), /*this is the Primary Key */
"Home Address"  varchar (100),
"Spouse Name" varchar  (100),
"Favorite Lens Maker" varchar (100),
"Favorite Car Manufacturer" varchar (100)
);

Drop Table DirectorPersonal
Select *
From DirectorPersonal;
Alter Table DirectorPersonal
ADD PRIMARY KEY("Name(First,Last)");
 
Create table DirectorWork
(
"PastMovies" varchar(3000),
"D.G.A.D" Int Not Null,
"Name(First,Last)" varchar (30),
"Work Address" varchar (1000)
);

Alter Table DirectorWork 
ADD PRIMARY KEY ("Name(First,Last)")

Drop Table DirectorWork
Select *
From DirectorWork;

Select "Name(First,Last)"
From  ActorsPersonal A,
INNER JOIN DirectorPersonal on ActorsPersonal.Name(First.Last) = DirectorPersonal.Name(First.Last)
Where DirectorPeronal.Name(first.last) = "Kenau Reevs"