CREATE TABLE Player 
(
	player_id INT IDENTITY(1,1) PRIMARY KEY, 
	username VARCHAR(20)UNIQUE NOT NULL,
	email VARCHAR(50)UNIQUE NOT NULL,
	level INT DEFAULT 1,
	current_balance INT DEFAULT 0,
	created_at DATETIME DEFAULT GETDATE()
);

ALTER TABLE Player
ADD CONSTRAINT CHK_Level CHECK (level >= 1 AND level <= 100);

ALTER TABLE Player
ADD CONSTRAINT CHK_Balance CHECK (current_balance >= 0);


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

    INSERT INTO Player (username, email, level, current_balance, created_at)
VALUES 
    ('SniperWolf', 'sniper.wolf@example.com', 85, 45000, '2026-01-02 09:15:00'),
    ('FragMaster', 'frag.master@example.com', 42, 8500, '2026-01-05 14:30:00'),
    ('StealthOps', 'stealth@example.com', 67, 12400, '2026-01-10 18:45:00'),
    ('NoScopePro', 'noscope@example.com', 92, 21000, '2026-01-15 22:10:00'),
    ('WallBanger', 'wallbanger@example.com', 34, 4200, '2026-01-20 11:25:00'),
    ('DropShot', 'dropshot@example.com', 56, 9800, '2026-02-01 16:50:00'),
    ('BoomHeadshot', 'boom@example.com', 78, 15600, '2026-02-04 20:05:00'),
    ('TriggerHappy', 'trigger@example.com', 23, 1100, '2026-02-14 13:10:00'),
    ('LoneSurvivor', 'survivor@example.com', 49, 7500, '2026-02-28 08:55:00'),
    ('SquadLeader', 'leader@example.com', 88, 32000, '2026-03-05 19:30:00'),
    ('CombatMedic', 'combat.medic@example.com', 61, 14200, '2026-03-12 21:45:00'),
    ('HeavyGunner', 'heavy@example.com', 39, 5600, '2026-03-18 10:20:00'),
    ('ReconScout', 'recon@example.com', 73, 18900, '2026-03-25 15:05:00'),
    ('DemoExpert', 'demo@example.com', 52, 8900, '2026-04-01 12:40:00'),
    ('SilentKill', 'silent@example.com', 95, 41000, '2026-04-08 23:15:00'),
    ('RageQuitter', 'rage@example.com', 12, 300, '2026-04-10 09:50:00'),
    ('StormBringer', 'storm@example.com', 81, 27500, '2026-04-22 17:10:00'),
    ('VoidWalker', 'void@example.com', 64, 11200, '2026-04-30 20:35:00'),
    ('NightHawk', 'nighthawk@example.com', 47, 9100, '2026-05-02 08:15:00'),
    ('SteelTitan', 'steel@example.com', 71, 19800, '2026-05-04 11:55:00'),
    ('VenomStrike', 'venom@example.com', 58, 13400, '2026-05-06 16:30:00'),
    ('FrostBite', 'frostbite@example.com', 31, 4800, '2026-05-07 19:40:00'),
    ('CrimsonBlade', 'crimson@example.com', 89, 36000, '2026-05-08 22:05:00'),
    ('PhantomMenace', 'phantom@example.com', 76, 23000, '2026-05-09 13:20:00'),
    ('EchoBravo', 'echo@example.com', 21, 1500, '2026-05-10 09:45:00'),
    ('CharlieTango', 'charlie@example.com', 44, 8200, '2026-05-11 15:10:00'),
    ('BravoSix', 'bravo.six@example.com', 99, 50000, '2026-05-11 20:30:00'),
    ('GoingDark', 'dark@example.com', 84, 28900, '2026-05-12 10:15:00'),
    ('FinalBoss', 'boss@example.com', 100, 99999, '2026-05-12 14:00:00');