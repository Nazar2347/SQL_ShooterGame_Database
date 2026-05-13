CREATE VIEW v_ActiveFriendships AS
SELECT 
    InviterPlayer.username AS inviter,
    ReceiverPlayer.username AS friend,
    Friends.created_at AS since
FROM Friends
JOIN Player AS InviterPlayer ON Friends.inviter_id = InviterPlayer.player_id
JOIN Player AS ReceiverPlayer ON Friends.receiver_id = ReceiverPlayer.player_id
WHERE Friends.status = 'Accepted';