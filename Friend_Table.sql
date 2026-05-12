CREATE TABLE Friends
(
	friendship_id INT IDENTITY(1,1) PRIMARY KEY,
	inviter_id INT NOT NULL,
	receiver_id INT NOT NULL,
	status VARCHAR(20) NOT NULL CHECK (status IN ('pending', 'accepted', 'rejected')),
	created_at DATETIME DEFAULT GETDATE(),
	FOREIGN KEY (inviter_id) REFERENCES Player(player_id),
	FOREIGN KEY (receiver_id) REFERENCES Player(player_id),
	UNIQUE (inviter_id, receiver_id)
)
