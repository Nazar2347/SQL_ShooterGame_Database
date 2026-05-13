CREATE PROCEDURE proc_AcceptFriendRequest
	@InviterName VARCHAR(20),
	@ReceiverName VARCHAR(20)
AS
BEGIN
	DECLARE @InviterID INT;
	DECLARE @ReceiverID INT;

	IF dbo.fn_DoesUserExists(@InviterName) =1
	BEGIN
		SET @InviterID = dbo.fn_GetPlayerID(@InviterName);
	END
	ELSE
	BEGIN
		PRINT 'Error: Inviter name does not exists';
	END

	IF dbo.fn_DoesUserExists(@ReceiverName) =1
	BEGIN
		SET @ReceiverID = dbo.fn_GetPlayerID(@ReceiverName);
	END

	ELSE
	BEGIN
		PRINT 'Error: Receiver name does not exists';
	END

	IF EXISTS (SELECT 1 FROM Friends WHERE inviter_id = @InviterID AND receiver_id = @ReceiverID AND status = 'pending')
	BEGIN
		UPDATE Friends
		SET status = 'accepted'
		WHERE inviter_id = @InviterID AND receiver_id = @ReceiverID;

		PRINT 'SUCCESS' +@ReceiverName +'accepted friend request from '+ @InviterName;
	END

	ELSE
	BEGIN
		PRINT 'ERROR: No pending requests found between these players.';
	END
END;
