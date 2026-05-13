CREATE FUNCTION fn_GetPlayerID(@UserName VARCHAR(20))
RETURNS INT
AS
BEGIN
	DECLARE @PlayerID INT;

	SELECT @PlayerID = Player.player_id
	FROM Player
	WHERE username = @UserName;

	RETURN @PlayerID;
END;