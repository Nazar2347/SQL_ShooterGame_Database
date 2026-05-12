/*CREATE TABLE Player 
(
	player_id INT IDENTITY(1,1) PRIMARY KEY, 
	username VARCHAR(20)UNIQUE NOT NULL,
	email VARCHAR(50)UNIQUE NOT NULL,
	level INT DEFAULT 1,
	current_balance INT DEFAULT 0,
	created_at DATETIME DEFAULT GETDATE()
);*/

INSERT INTO Player (username, email, level, current_balance, created_at)
VALUES 
    ('ShadowStrike', 'shadow@example.com', 50, 15000, '2025-01-10T08:00:00'),
    ('NeonValkyrie', 'neon@example.com', 42, 8500, '2025-01-12T14:30:00'),
    ('LootGoblin', 'loot@example.com', 15, 25000, '2025-02-05T19:45:00'),
    ('HeadshotHero', 'hero@example.com', 88, 2100, '2025-02-18T22:15:00'),
    ('TacticalTurtle', 'turtle@example.com', 24, 1200, '2025-03-01T09:20:00'),
    ('CampMaster', 'camper@example.com', 33, 4000, '2025-03-15T11:11:00'),
    ('RushB_Pro', 'rush@example.com', 67, 9800, '2025-04-04T16:50:00'),
    ('GhostReaper', 'ghost@example.com', 95, 34000, '2025-04-20T20:00:00'),
    ('PixelNinja', 'pixel@example.com', 12, 300, '2025-05-10T13:10:00'),
    ('CyberSamurai', 'cyber@example.com', 76, 12500, '2025-06-01T15:55:00'),
    ('BulletMagnet', 'bullet@example.com', 8, 150, '2025-06-15T18:30:00'),
    ('IronMaiden', 'iron@example.com', 55, 7600, '2025-07-04T21:45:00'),
    ('AFK_King', 'afk@example.com', 4, 0, '2025-07-20T02:20:00'),
    ('TryHard_Timmy', 'timmy@example.com', 40, 1100, '2025-08-11T17:05:00'),
    ('RNGesus', 'rng@example.com', 99, 50000, '2025-09-09T09:09:00'),
    ('FlankSteak', 'flank@example.com', 29, 3200, '2025-10-01T12:00:00'),
    ('GG_WP', 'ggwp@example.com', 60, 8900, '2025-10-31T23:59:00'),
    ('MedicMain', 'medic@example.com', 82, 14200, '2025-11-11T11:11:00'),
    ('SaltyTeemo', 'salty@example.com', 19, 650, '2025-12-05T08:45:00'),
    ('AlphaWolf', 'alpha@example.com', 71, 22000, '2025-12-25T10:00:00');