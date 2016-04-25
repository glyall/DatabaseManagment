Create Trigger RaidTeam_Log 
After Update on RaidTeam
For each row 
Execute Procedure Raid_log();


Create Trigger  RaiderInfo_log
After Update on RaiderInfo 
for each row 
Execute Procedure Raider_Log();


Create trigger ContactInfo_Log 
After Update on ContactInfo 
For each row 
Execute Procedure Contact_Log();


Create Trigger TeamSpeakInfo_log 
After Update on TeamSpeakInfo 
For each rown
Execute Procedure TeamSpeak_Log();

Create  or Replace Function Raid_log(timestamp) Returns Refcursor as 
$$
Declare 
Current_date_with_time TimeStamp; $1
Begin 
Open   table 'RaidTeam_Log'
Select current_date
Insert into RaidTeam_Log (current_date_with_time)
Values 
(current_date)
End; 
$$
Language plpgsql;



Create or Replace Function Raider_Log Return Refurso 
$$ 
Declar 
Alt_time TimeStamp; =$1;
Resultset Refursor; = $2;

Select * 
From RaidTeam_log



