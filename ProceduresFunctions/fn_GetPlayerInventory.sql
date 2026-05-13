CREATE FUNCTION fn_GetPlayerInventory (@PlayerUsername VARCHAR(20))
RETURNS TABLE
AS
RETURN 
(
    SELECT 
        Player.username,
        Items.name AS item_name,
        Items.item_type,
        Inventory.acquired_at
    FROM Player
    INNER JOIN Inventory ON Player.player_id = Inventory.player_id
    INNER JOIN Items ON Inventory.item_id = Items.item_id
    WHERE Player.username = @PlayerUsername
);