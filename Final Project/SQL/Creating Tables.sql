Create Table RaidTeam(
ScreenName varchar (12) NOT NULL,
RealName varchar(200) NOT NULL,
Server  varchar (200) NOT NULL,
Guild  varchar (30) NOT NULL,
Rank varchar (20) Not Null,
Primary Key (ScreenName,Guild)
);
Insert into RaidTeam (ScreenName,RealName,Server,Guild,Rank)
Values 
('Xethrion','Josh','Ysera','The Lizards','Raider'),
('Potvin','Sam','Ysera','The Lizards','Raider'),
('HammerWraith','Greg','Ysera','The Lizards','Admin'),
('Mcloven','Kory','Ysera','The Lizards','Raider'),
('Kaysham','Sebastian','Ysera','The Lizards','Raider'),
('Redrodis','Will','Ysera','The Lziards','Raider'),
('Noranai','Alex','Ysera','The Lizards','SubAdmin'),
('Jofts','Tristan','Ysera','The Lizards','SubAdmin'),
('Jaroq','Jar','Ysera','The Breach Of Faith','Guest'),
('Geriaticc','Ticc','Ysera','The Royal Red Devils','Guest'),
('Cyclonic','Lyndon','WhisperWind','Reckless Aband','Guest'),
('Xayu','Carl','WhisperWind','Reckless Aband','Guest'),
('Quillnsofa','Matt','Arthor','Friendship is Magic','Guest'),
('Vlyniswub','Matt','Arthor','Friendship is Magic','Guest'),
('Geofrey','Chris','Arthor','Friendship is Magic','Guest'),
('WytMagic','Wyt','Ysera','True Lies','Guest'),
('Darkmek','Kevin','Durotan','The Lizards','SubAdmin');
Select * 
From RaidTeam
Drop table RaidTeam



Create Table RaiderInfo(
ScreenName varchar (12) Not Null,
Server varchar (200) Not Null, 
Guild varchar (30) Not Null,
Class varchar (30) Not Null, 
Spec varchar (30) Not Null,
ILvl int,
Primary Key (ScreenName,Guild)
);
Insert into Raiderinfo(ScreenName,Guild,Server,Class,Spec,ILvl)
Values
('Xethrion','The Lizards','Ysera','Warlock','Destro','720'),
('Potvin','The Lizards','Ysera','Mage','Arcane','720'),
('HammerWraith','The Lizards','Ysera','Palidan','Holy','720'),
('Mcloven','The Lizards','Ysera','Mage','Frost','720'),
('Kaysham','The Lizards','Ysera','Shaman','Resto','720'),
('Redrodis','The Lziards','Ysera','DeathKnight','Frost','720'),
('Noranai','The Lizards','Ysera','Palidan','Ret','720'),
('Jofts','The Lizards','Ysera','Priest','Holy','720'),
('Jaroq','The Breach Of Faith','Ysera','Warrior','Fury','720'),
('Geriaticc','The Royal Red Devils','Ysera','Warrior','Fury','720'),
('Cyclonic','Reckless Aband','WhisperWind','Shaman','Enhancement','720'),
('Xayu','Reckless Aband','WhisperWind','Monk','BrewMaster','720'),
('Quillnsofa','Friendship is Magic','Arthor','Mage','Arcane','720'),
('Vlyniswub','Friendship is Magic','Arthor','Druid','Resto','720'),
('Geofrey','Friendship is Magic','Arthor','Hunter','MarksMan','720'),
('WytMagic','True Lies','Ysera','Druid','Resto','720'),
('Darkmek','The Lizards','Durotan','DeathKnight','Blood','720');

Select * 
From RaiderInfo 
Drop Table RaiderInfo

Create Table ContactInfo(
ScreenName varchar (12) NOT NULL,
RealName varchar (200) NOT NULL,
Server  varchar (200) NOT NULL,
Guild  varchar (30) NOT NULL,
Class varchar (30) NOT NULL,
Email varchar (40) NOT NULL,
Primary Key(ScreenName,Guild)
);
Insert into ContactInfo(ScreenName,RealName,Server,Guild,Class,Email)
Values 
('Xethrion','Josh','Ysera','The Lizards','Warlock','JOSHUA.FEIN741@LIVE.COM'),
('Potvin','Sam','Ysera','The Lizards','Mage','nerboyiv@gmail.com'),
('HammerWraith','Greg','Ysera','The Lizards','Palidan','Commander0423@gmail.com'),
('Mcloven','Kory','Ysera','The Lizards','Mage','16.kory.clark@westg.org'),
('Kaysham','Sebastian','Ysera','The Lizards','Shaman','vitalidaparkour@gmail.com'),
('Redrodis','Will','Ysera','The Lziards','DeathKnight','laxgombos@gmail.com'),
('Noranai','Alex','Ysera','The Lizards','Palidan','awn3415@g.rit.edu'),
('Jofts','Tristan','Ysera','The Lizards','Priest','tristanjesby@gmail.com'),
('Jaroq','Jar','Ysera','The Breach Of Faith','Warrior','quitter@gmai.com'),
('Geriaticc','Ticc','Ysera','The Royal Red Devils','Warrior','who.care@gmail.com'),
('Cyclonic','Lyndon','WhisperWind','Reckless Aband','Shaman','l.purnell@westnet.com.au'),
('Xayu','Carl','WhisperWind','Reckless Aband','Monk','xayuthepanda@gmail.com'),
('Quillnsofa','Matt','Arthor','Friendship is Magic','Mage','omegagryphon@gmail.com'),
('Vlyniswub','Matt','Arthor','Friendship is Magic','Druid','lenkagamine40@gmail.com'),
('Geofrey','Chris','Arthor','Friendship is Magic','Hunter','cplus902@gmail.com'),
('WytMagic','Wyt','Ysera','True Lies','Druid','wheredidshego@gmail.com'),
('Darkmek','Kevin','Durotan','The Lizards','Deathknight','k.decarlo131@gmail.com');
Select * 
From ContactInfo
Drop Table ContactInfo


Create table TeamSpeakInfo(
ScreenName varchar (12) Not Null,
Guild varchar (200) Not null,
Rank varchar (20) Not null,
Permissions varchar (200)Not Null,
Primary Key (ScreenName,Guild)
);
Insert into TeamSpeakInfo(ScreenName,Guild,Rank,Permissions)
Values
('Xethrion','The Lizards','Raider','AllUnlockedChannels&RaidGroup'),
('Potvin','The Lizards','Raider','AllUnlockedChannels&RaidGroup'),
('HammerWraith','The Lizards','Admin','AllChannels'),
('Mcloven','The Lizards','Raider','AllUnlockedChannels&RaidGroup'),
('Kaysham','The Lizards','Raider','AllUnlockedChannels&RaidGroup'),
('Redrodis','The Lziards','Raider','AllUnlockedChannels&RaidGroup'),
('Noranai','The Lizards','SubAdmin','AllChannels'),
('Jofts','The Lizards','SubAdmin','AllChannels'),
('Jaroq','The Breach Of Faith','Guest','AllUnlockedChannels'),
('Geriaticc','The Royal Red Devils','Guest','AllUnlockedChannels'),
('Cyclonic','Reckless Aband','Guest','AllUnlockedChannels'),
('Xayu','Reckless Aband','Guest','AllUnlockedChannels'),
('Quillnsofa','Friendship is Magic','Guest','AllUnlockedChannels'),
('Vlyniswub','Friendship is Magic','Guest','AllUnlockedChannels'),
('Geofrey','Friendship is Magic','Guest','AllUnlockedChannels'),
('WytMagic','True Lies','Guest','AllUnlockedChannels&RaidGroup'),
('Darkmek','The Lizards','SubAdmin','AllChannels');
Select * 
From TeamSpeakInfo
Drop table TeamSpeakInfo

Create Table RaidTeam_Log(
Current_date_with_time timestamp
);
Select * 
From RaidTeam_log

Drop Table RaidTeam_log 