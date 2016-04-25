/* All Foreign  */

Alter Table RaiderInfo
Add foreign Key (ScreenName,Guild) 
References RaidTeam (ScreenName,Guild)

Alter Table ContactInfo
Add foreign key (ScreenName,Guild)
References RaidTeam(ScreenName,Guild)

Alter Table TeamSpeakInfo
Add Foreign Key (ScreenName,Guild)
References RaidTeam