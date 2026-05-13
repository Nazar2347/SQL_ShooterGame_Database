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

-- AI generated data insertion for Friends table
DECLARE @CurrentInviter INT = 1;
DECLARE @MaxPlayers INT = 49;
DECLARE @FriendsCount INT;
DECLARE @CurrentLoop INT;
DECLARE @RandomReceiver INT;
DECLARE @RandomStatusInt INT;
DECLARE @Status VARCHAR(20);

-- Loop through all 50 players to act as the "Inviter"
WHILE @CurrentInviter <= @MaxPlayers
BEGIN
    -- Decide how many friend connections this player will initiate (2 to 6)
    SET @FriendsCount = ABS(CHECKSUM(NEWID())) % 5 + 2;
    SET @CurrentLoop = 1;

    WHILE @CurrentLoop <= @FriendsCount
    BEGIN
        -- Pick a random player to receive the request (1 to 50)
        SET @RandomReceiver = ABS(CHECKSUM(NEWID())) % @MaxPlayers + 1;

        -- Check constraints: 
        -- 1. Inviter and Receiver are not the same person
        -- 2. This exact pair does not already exist in the table
        IF (@CurrentInviter != @RandomReceiver) AND NOT EXISTS (
            SELECT 1 FROM Friends WHERE inviter_id = @CurrentInviter AND receiver_id = @RandomReceiver
        )
        BEGIN
            -- Generate a random status: 70% Accepted, 20% Pending, 10% Blocked
            SET @RandomStatusInt = ABS(CHECKSUM(NEWID())) % 10;

            IF @RandomStatusInt <= 6 
                SET @Status = 'Accepted';
            ELSE IF @RandomStatusInt <= 8
                SET @Status = 'Pending';
            ELSE 
                SET @Status = 'Blocked';

            -- Insert the clean data
            INSERT INTO Friends (inviter_id, receiver_id, status)
            VALUES (@CurrentInviter, @RandomReceiver, @Status);
        END

        -- Move to the next attempt
        SET @CurrentLoop = @CurrentLoop + 1;
    END

    -- Move to the next Inviter
    SET @CurrentInviter = @CurrentInviter + 1;
END
