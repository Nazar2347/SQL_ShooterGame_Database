CREATE VIEW v_PremiumTransactions AS
SELECT 
    Player.username,
    Items.name AS luxury_item,
    Transactions.amount,
    Transactions.[timestamp]
FROM Transactions
JOIN Player ON Transactions.player_id = Player.player_id
JOIN Items ON Transactions.item_id = Items.item_id
WHERE Transactions.amount > 10000;