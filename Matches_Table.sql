/*CREATE TABLE Matches 
(
	match_id INT PRIMARY KEY IDENTITY(1,1),
	map_name VARCHAR (25) NOT NULL,
	start_time DATETIME DEFAULT GETDATE(),
	end_time DATETIME,
)*/
INSERT INTO Matches (map_name, start_time, end_time)
VALUES 
    ('Dust 2', '2026-05-10 14:00:00', '2026-05-10 14:25:30'),      -- 25 min match
    ('Nuketown', '2026-05-10 15:15:00', '2026-05-10 15:27:10'),    -- 12 min match
    ('Rust', '2026-05-11 09:30:00', '2026-05-11 09:40:45'),        -- 10 min match
    ('Terminal', '2026-05-11 11:00:00', '2026-05-11 11:35:00'),    -- 35 min match
    ('Shipment', '2026-05-11 16:20:00', '2026-05-11 16:28:15'),    -- 8 min match
    ('Blood Gulch', '2026-05-11 20:00:00', '2026-05-11 20:45:00'), -- 45 min match
    ('Facility', '2026-05-12 10:15:00', '2026-05-12 10:30:20'),    -- 15 min match
    ('Wake Island', '2026-05-12 12:00:00', '2026-05-12 12:42:10'), -- 42 min match
    ('Dust 2', '2026-05-12 13:30:00', '2026-05-12 13:55:00'),      -- 25 min match
    ('Nuketown', '2026-05-12 14:10:00', '2026-05-12 14:22:45');    -- 12 min match