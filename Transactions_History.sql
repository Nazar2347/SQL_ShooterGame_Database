CREATE VIEW v_PremiumTransactions AS
SELECT 
    p.username,
    i.name AS luxury_item,
    t.amount,
    t.[timestamp]
FROM Transactions t
JOIN Player p ON t.player_id = p.player_id
JOIN Items i ON t.item_id = i.item_id
WHERE t.amount > 10000;