-- Procedure for login
CREATE PROCEDURE LoginUser
    @email NVARCHAR(255),
    @password NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the user exists and password matches
    SELECT account_id, name, email 
    FROM accounts
    WHERE email = @email AND password = HASHBYTES('SHA2_256', @password);
END;