CREATE VIEW v_ActiveFriendships AS
SELECT 
    p1.username AS inviter,
    p2.username AS friend,
    f.created_at AS since
FROM Friends f
JOIN Player p1 ON f.inviter_id = p1.player_id
JOIN Player p2 ON f.receiver_id = p2.player_id
WHERE f.status = 'accepted';