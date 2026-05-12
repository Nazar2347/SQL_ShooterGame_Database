CREATE TABLE Transactions(
	transactionId INT IDENTITY(1,1) PRIMARY KEY,
	player_id INT NOT NULL,
	item_id INT,
	amount INT DEFAULT 0 NOT NULL,
	[timestamp] DATETIME2 DEFAULT GETDATE() NOT NULL,
	Foreign key (player_id) REFERENCES Player (player_id),
	Foreign key (item_id) REFERENCES Items (item_id)
);