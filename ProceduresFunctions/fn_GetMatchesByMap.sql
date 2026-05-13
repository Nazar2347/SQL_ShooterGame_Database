CREATE FUNCTION fn_GetMatchesByMap (@MapName VARCHAR(25))
RETURNS TABLE
AS
RETURN 
(
    SELECT 
        Matches.map_name,
        Player.username,
        Match_Result.kills,
        Match_Result.deaths,
        Matches.start_time
    FROM Matches
    INNER JOIN Match_Result ON Matches.match_id = Match_Result.match_id
    INNER JOIN Player ON Match_Result.player_id = Player.player_id
    WHERE Matches.map_name = @MapName
);