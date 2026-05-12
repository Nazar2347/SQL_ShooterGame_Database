CREATE VIEW v_RevenueByType AS
SELECT 
    Items.item_type,
    COUNT(Transactions.transactionId) AS total_sales_count,
    SUM(Transactions.amount) AS total_revenue
FROM Items
JOIN Transactions ON Items.item_id = Transactions.item_id
GROUP BY Items.item_type;