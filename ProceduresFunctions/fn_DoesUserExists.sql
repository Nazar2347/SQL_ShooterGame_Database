CREATE FUNCTION fn_DoesUserExists(@Username VARCHAR(20))
RETURNS BIT 
AS
BEGIN 
	DECLARE @UserExists BIT =0;

	IF EXISTS (SELECT 1 FROM Player WHERE username = @Username)
	BEGIN
		SET @UserExists=1;
	END

	RETURN @UserExists;
END;