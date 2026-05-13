CREATE TABLE Loadout(
    loadout_id INT IDENTITY(1,1) PRIMARY KEY,
    player_id INT FOREIGN KEY REFERENCES Player(player_id),
    tactical_item_id INT FOREIGN KEY REFERENCES Items(item_id), 
    loadout_name VARCHAR(20) NOT NULL,
    primary_weapon_id INT FOREIGN KEY REFERENCES Items(item_id),
    secondary_weapon_id INT FOREIGN KEY REFERENCES Items(item_id)
);

INSERT INTO Loadout (player_id, tactical_item_id, loadout_name, primary_weapon_id, secondary_weapon_id)
VALUES 
    (1, 5, 'One Shot', 1, 2),
    (1, 12, 'Night Ops', 1, 4),
    (2, 7, 'Boom Boom', 2, 3),
    (3, 8, 'Ghost', 1, 3),
    (11, 10, 'Healer', 2, 3),
    (14, 21, 'Plant C4', 2, 7),
    (29, 14, 'Overpowered', 1, 4),
    (4, 9, 'Flash Entry', 1, 2),
    (5, 5, 'Tank', 2, 3),
    (15, 12, 'Assassin', 1, 4);