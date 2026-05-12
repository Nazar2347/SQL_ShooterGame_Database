CREATE TABLE Items(
    item_id INT IDENTITY (1,1) PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    item_type VARCHAR(50) NOT NULL,
    price INT DEFAULT 0 NOT NULL,
    ispurchasable BIT DEFAULT 1 NOT NULL
);

INSERT INTO Items (name, item_type, price, ispurchasable)
VALUES 
    ('AWP Sniper Rifle', 'Ranged Weapon', 12500, 1),
    ('Desert Eagle', 'Ranged Weapon', 3500, 1),
    ('Combat Knife', 'Melee Weapon', 1200, 1),
    ('Karambit Fade', 'Melee Weapon', 45000, 1),
    ('Kevlar Vest', 'Armor', 2500, 1),
    ('Spetsnaz Helmet', 'Armor', 3200, 1),
    ('Frag Grenade', 'Explosive', 600, 1),
    ('Smoke Grenade', 'Tactical', 400, 1),
    ('Flashbang', 'Tactical', 450, 1),
    ('Medkit', 'Consumable', 1500, 1),
    ('Energy Drink', 'Consumable', 250, 1),
    ('Night Vision Goggles', 'Gear', 8500, 1),
    ('Defuse Kit', 'Gear', 1200, 1),
    ('Tactical Backpack', 'Gear', 5000, 1),
    ('Dragon Lore Skin', 'Cosmetic', 99999, 0),
    ('Neon Rider Camo', 'Cosmetic', 15000, 1),
    ('Redline Gloves', 'Cosmetic', 22000, 1),
    ('Silencer', 'Attachment', 1800, 1),
    ('Holographic Sight', 'Attachment', 2400, 1),
    ('Extended Magazine', 'Attachment', 3000, 1),
    ('C4 Explosive', 'Mission Item', 0, 0),
    ('Master Key', 'Tool', 10000, 0),
    ('Double XP Token (1h)', 'Booster', 4000, 1),
    ('Battle Pass Season 5', 'Subscription', 12000, 1),
    ('Crown of the Champion', 'Artifact', 500000, 0);