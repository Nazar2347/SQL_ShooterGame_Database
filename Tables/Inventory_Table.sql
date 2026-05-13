CREATE TABLE Inventory(
    inventory_id INT IDENTITY(1,1) PRIMARY KEY,
    player_id INT FOREIGN KEY REFERENCES Player(player_id),
    item_id INT FOREIGN KEY REFERENCES Items(item_id),
    acquired_at DATETIME2 DEFAULT GETDATE() NOT NULL
);

INSERT INTO Inventory (player_id, item_id)
VALUES 
    (1, 1),   
    (1, 18),  
    (2, 2),   
    (2, 7),   
    (3, 12),  
    (3, 3),   
    (4, 1),   
    (5, 5),   
    (10, 24), 
    (11, 10), 
    (11, 10), 
    (14, 21), 
    (15, 4),  
    (15, 15), 
    (29, 25), 
    (32, 10), 
    (32, 11), 
    (32, 14), 
    (40, 2),  
    (49, 22);

    INSERT INTO Inventory (player_id, item_id, acquired_at)
VALUES 
    (1, 16, '2026-01-03 10:00:00'),
    (2, 5, '2026-01-06 15:20:00'),
    (10, 8, '2026-03-06 20:00:00'),
    (15, 12, '2026-04-09 23:30:00'),
    (29, 23, '2026-05-12 14:05:00');