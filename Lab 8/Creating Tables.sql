create table Actors_Physical(
"Name" varchar(100) NOT NULL , 
"HairColor" varchar (30),
"EyeColor" varchar(30),
"HeightInches" int NOT NULL ,
"WeightPounds" int Not Null 
);

Select * 
from Actors_Physical


Create table Actors_Personal(
"Name" varchar(100)NOT NULL,
"Address" varchar(100),
"SpouseName" varchar(100),
"FavColor" varchar(30),
"S.A.G.A.D" int  NOT NUll,
"pastMovies" Character(300),
"FavDirector" character(300)
);

Select * 
From Actors_Personal 

Create table MovieSales(
"Name" varchar (100),
"B-raySales" int,
"DvdSales" int ,
"Downloads" int,
"DomesticSales" int,
"ForeginSales" int,
"MPAA Number" int Not Null
);
Select * 
From MovieSales ;

Create table MovieData(
"Name" varchar (100),
"Year Of Realse (Y.O.R)" int Not Null,
"MPAA" int ,
"Cast" varchar (200)
);

Select * 
From MovieData ;

Create table DirectorPersonal(
"Name" varchar (30),
"AdressHome"  varchar (100),
"SpouseName" varchar  (100),
"FavLensMaker" varchar (100),
"FavCar" varchar (100)
);

Select *
From DirectorPersonal;
 
Create table DirectorWork(
"PastMovies" varchar(3000),
"D.G.A.D" Int Not Null,
"Name" varchar (30),
"AddressWork" varchar (1000)
);

Select *
From DirectorWork;
