#Subquery
select s.PlayerID, s.Status, p.Age
from Active s, Players p
where s.PlayerID = p.PlayerID and p.Age >
(select Age
from Players 
where Age ='20');