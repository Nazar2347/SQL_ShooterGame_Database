CREATE TABLE Match_Result
(
	result_id INT IDENTITY(1,1) PRIMARY KEY,
	match_id INT NOT NULL,
	player_id INT NOT NULL,
	kills INT DEFAULT 0,
	deaths INT DEFAULT 0,
	is_winner BIT,
	FOREIGN KEY (match_id) REFERENCES Matches(match_id),
	FOREIGN KEY (player_id) REFERENCES Player(player_id)
)