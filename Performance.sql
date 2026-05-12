CREATE VIEW v_PlayerPerformance AS
SELECT 
    p.username,
    p.level,
    SUM(mr.kills) AS total_kills,
    SUM(mr.deaths) AS total_deaths,
    CAST(SUM(mr.kills) AS FLOAT) / NULLIF(SUM(mr.deaths), 0) AS kda_ratio
FROM Player p
JOIN Match_Result mr ON p.player_id = mr.player_id
GROUP BY p.player_id, p.username, p.level;