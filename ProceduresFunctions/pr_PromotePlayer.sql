CREATE PROCEDURE sp_PromotePlayer
    @PlayerID INT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @CurrentLevel INT;

    SELECT @CurrentLevel = level FROM Player WHERE player_id = @PlayerID;

    IF @CurrentLevel < 100
    BEGIN
        UPDATE Player 
        SET level = level + 1 
        WHERE player_id = @PlayerID;

        UPDATE Player 
        SET current_balance = current_balance + ((@CurrentLevel + 1) * 100) 
        WHERE player_id = @PlayerID;

        PRINT 'The player has advanced to a higher level!';
    END
    ELSE
    BEGIN
        PRINT 'The player has already reached the maximum level.';
    END
END;