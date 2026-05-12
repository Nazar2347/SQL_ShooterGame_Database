CREATE VIEW v_PlayerPerformance AS
SELECT 
    Player.username,
    Player.level,
    SUM(Match_Result.kills) AS total_kills,
    SUM(Match_Result.deaths) AS total_deaths,
    CAST(SUM(Match_Result.kills) AS FLOAT) / NULLIF(SUM(Match_Result.deaths), 0) AS kda_ratio
FROM Player
JOIN Match_Result ON Player.player_id = Match_Result.player_id
GROUP BY Player.player_id, Player.username, Player.level;