CREATE VIEW v_DetailedMatchHistory AS
SELECT 
    Matches.match_id,
    Matches.map_name,
    Player.username AS player_name,
    Match_Result.kills,
    Match_Result.deaths,
    CASE 
        WHEN Match_Result.is_winner = 1 THEN 'Victory' 
        ELSE 'Defeat' 
    END AS result,
    Matches.start_time
FROM Matches
JOIN Match_Result ON Matches.match_id = Match_Result.match_id
JOIN Player ON Match_Result.player_id = Player.player_id;