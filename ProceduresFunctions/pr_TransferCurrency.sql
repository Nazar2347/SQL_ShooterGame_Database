CREATE PROCEDURE sp_TransferCurrency
    @SenderID INT,
    @ReceiverID INT,
    @Amount INT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @SenderBalance INT;

    -- 1. Sprawdzenie salda nadawcy
    SELECT @SenderBalance = current_balance FROM Player WHERE player_id = @SenderID;

    IF @SenderBalance >= @Amount AND @Amount > 0
    BEGIN
        -- 2. Odjęcie od nadawcy
        UPDATE Player 
        SET current_balance = current_balance - @Amount 
        WHERE player_id = @SenderID;

        -- 3. Dodanie do odbiorcy
        UPDATE Player 
        SET current_balance = current_balance + @Amount 
        WHERE player_id = @ReceiverID;

        PRINT 'Transfer completed successfully.';
    END
    ELSE
    BEGIN
        PRINT 'Error: Incorrect amount or no funds.';
    END
END;