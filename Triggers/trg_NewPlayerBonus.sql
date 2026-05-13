--  Trigger for insering new Player with level 0 and 1 which will add to balance 1000

CREATE TRIGGER trg_after_SetInitialBalance
ON Player
AFTER INSERT
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE new_player
	SET current_balance = new_player.current_balance + 1000
	FROM Player new_player
	INNER JOIN inserted i ON new_player.player_id = i.player_id
	WHERE i.level IN (0, 1);
END;
