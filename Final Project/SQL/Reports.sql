Select  ScreenName,
	RealName, 
	Server 
From RaidTeam
Order by Realname ASC

Select ScreenName, 
	RealName, 
	Guild,
	Email
From ContactInfo 
Order by Guild 

Select ScreenName,
	Class ,
	Guild 
From RaiderInfo 
Order by Class ASC;