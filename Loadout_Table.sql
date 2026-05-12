CREATE TABLE Loadout(
	ladout_id INT IDENTITY(1,1) PRIMARY KEY,
	player_id INT FOREIGN KEY REFERENCES Player(player_id),
	item_id INT FOREIGN KEY REFERENCES Items(item_id),
	loadout_name VARCHAR(20) NOT NULL,
	primary_weapeon_id INT FOREIGN KEY REFERENCES Items(item_id),
	secondary_weapeon_id INT FOREIGN KEY REFERENCES Items(item_id)
);