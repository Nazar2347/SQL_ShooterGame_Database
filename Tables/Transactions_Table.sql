CREATE TABLE Transactions(
	transactionId INT IDENTITY(1,1) PRIMARY KEY,
	player_id INT FOREIGN KEY REFERENCES Player(player_id),
	item_id INT FOREIGN KEY REFERENCES ITEMS(item_id),
	amount INT DEFAULT 0 NOT NULL,
	[timestamp] DATETIME2 DEFAULT GETDATE() NOT NULL
);

INSERT INTO Transactions (player_id, item_id, amount)
VALUES 
    (1, 1, 12500),
    (2, 2, 3500),
    (11, 10, 3000),
    (10, 24, 12000),
    (32, 11, 250),
    (4, 1, 12500),
    (40, 2, 3500);

    INSERT INTO Transactions (player_id, item_id, amount, [timestamp])
VALUES 
    (15, 12, 8500, '2026-04-09 23:25:00'),
    (29, 23, 4000, '2026-05-12 14:00:00'),
    (3, 3, 1200, '2026-01-11 10:00:00'),
    (5, 5, 2500, '2026-01-21 12:00:00'),   
    (14, 7, 1800, '2026-04-02 09:15:00');