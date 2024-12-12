show databases;
create database football;
use football;
CREATE TABLE players (
    player_name VARCHAR(100),
    jersey_number INT,
    team VARCHAR(100),
    goals_scored INT
);
INSERT INTO players (player_name, jersey_number, team, goals_scored) 
VALUES
    ('Messi', 10, 'Barcelona', 36),
    ('Ronaldo', 7, 'Juventus', 21),
    ('Mbappe', 7, 'PSG', 33),
    ('Neymar', 11, 'PSG', 23),
    ('Lewandowski', 9, 'Bayern', 22);
Select * from players;
Select player_name from players;
Select player_name,team from players;
Select * from players where jersey_number=10;
update players set team='United' where jersey_number=7;
ALTER TABLE players ADD COLUMN assists INT;
select * from players;
UPDATE players
SET assists = 12
WHERE player_name = 'Messi';

UPDATE players
SET assists = 5
WHERE player_name = 'Ronaldo';

UPDATE players
SET assists = 7
WHERE player_name = 'Mbappe';

UPDATE players
SET assists = 10
WHERE player_name = 'Neymar';

UPDATE players
SET assists = 3
WHERE player_name = 'Lewandowski';
select * from players;
ALTER TABLE players DROP COLUMN assists;
select * from players;
DELETE FROM players WHERE player_name = 'Ronaldo';
select sum(goals_scored) from players;
select avg(goals_scored) from players;
select max(goals_scored) from players;
select min(goals_scored) from players;
select count(team) from players;
SELECT COUNT(DISTINCT team) FROM players;
select * from players order by goals_scored;
select * from players order by goals_scored desc;









