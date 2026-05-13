--Updating Player balance after each match based on kills (20 currency per kill)

CREATE TRIGGER trg_after_KillReward
ON Match_Result
AFTER INSERT
AS
BEGIN
	DECLARE @Reward INT = 20;-- 20 currency per kill

	SET NOCOUNT ON;
	UPDATE p
	SET p.current_balance = p.current_balance + (mr.kills * @Reward) 
	FROM Player p
	INNER JOIN inserted i ON p.player_id = i.player_id
	INNER JOIN Match_Result mr ON mr.result_id = i.result_id;
END;