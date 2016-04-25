Create View TheLizards As (
Select ScreenName,Server,Rank,Guild 
From RaidTeam
where Guild = 'The Lizards'
);

Select * 
From TheLizards

Drop View TheLizards


Create View ThePonies As (
Select ScreenName,Server,Rank,Guild
From RaidTeam
where Guild = 'Friendship is Magic'
);
Drop View ThePonies
Select * 
From ThePonies

Create View Pugs As (
Select ScreenName,Server,Rank,Guild
From RaidTeam
where Guild not in ('Friendship is Magic','The Lizards')
);

Select * 
From Pugs
Drop View Pugs
