
CREATE PROCEDURE sp_SendFriendRequest
	@InviterName VARCHAR(20),
	@ReceiverName VARCHAR(20)
AS
BEGIN
	DECLARE @InviterID INT = dbo.fn_GetPlayerID(@InviterName);
	DECLARE @ReceiverID INT = dbo.fn_GetPlayerID(@ReceiverName);

	IF @InviterID IS NULL
	BEGIN
		PRINT 'Error: Username of inviter does not exists!';
	END;

	ELSE IF @ReceiverID IS NULL
	BEGIN
		PRINT 'Error: Username of receiver does not exists!';
	END;

	IF @InviterID = @ReceiverID
	BEGIN
		PRINT 'Error: You cannot send friend request to yourself.';
		RETURN;
	END;

	IF EXISTS (SELECT 1 FROM Friends WHERE inviter_id =@InviterID AND receiver_id = @ReceiverID)
	BEGIN
		PRINT 'Error: You have already sent a friend request to this Player';
		RETURN;
	END

	INSERT INTO Friends (inviter_id, receiver_id, status)
	VALUES (@InviterID,@ReceiverID, 'pending');
END;