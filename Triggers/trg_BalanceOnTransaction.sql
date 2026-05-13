-- Trigger for updating balance after transaction is inserted
CREATE TRIGGER trg_after_UpdateBalanceOnTransaction
ON Transactions
AFTER INSERT
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE p
	SET p.current_balance = p.current_balance + i.TotalTransactionAmount
	FROM Player p
	INNER JOIN
	(
		SELECT player_id, SUM (amount) AS TotalTransactionAmount
		FROM inserted
		GROUP BY player_id
	)
	i ON p.player_id = i.player_id
END;