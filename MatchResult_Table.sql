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

-- AI generated data insertion for Match_Result table
DECLARE @PlayerID INT = 1;
DECLARE @MatchesToPlay INT;
DECLARE @CurrentMatch INT;

-- Loop through all 50 players
WHILE @PlayerID <= 49
BEGIN
    -- Decide how many matches this player will play (Random number between 1 and 5)
    -- ABS(CHECKSUM(NEWID())) is the best way to get a truly random number in MSSQL
    SET @MatchesToPlay = ABS(CHECKSUM(NEWID())) % 5 + 1; 

    SET @CurrentMatch = 1;

    -- Inner loop: insert that specific number of matches for the current player
    WHILE @CurrentMatch <= @MatchesToPlay
    BEGIN
        INSERT INTO Match_Result (match_id, player_id, kills, deaths, is_winner)
        VALUES (
            ABS(CHECKSUM(NEWID())) % 10 + 1, -- Random match_id between 1 and 10
            @PlayerID,                       -- The current player in the loop
            ABS(CHECKSUM(NEWID())) % 35,     -- Random kills between 0 and 34
            ABS(CHECKSUM(NEWID())) % 20,     -- Random deaths between 0 and 19
            ABS(CHECKSUM(NEWID())) % 2       -- Random 0 (Loss) or 1 (Win)
        );

        -- Move to the next match for this player
        SET @CurrentMatch = @CurrentMatch + 1;
    END

    -- Move to the next player
    SET @PlayerID = @PlayerID + 1;
END