CREATE VIEW v_MapFatalityStats AS
SELECT 
    Matches.map_name,
    COUNT(DISTINCT Matches.match_id) AS total_matches_played,
    AVG(Match_Result.kills) AS avg_kills_per_player
FROM Matches
JOIN Match_Result ON Matches.match_id = Match_Result.match_id
GROUP BY Matches.map_name;