
-- Procedure for registering a new user
CREATE PROCEDURE RegisterUser
    @name NVARCHAR(100),
    @email NVARCHAR(255),
    @password NVARCHAR(255)  -- Receive plain text password
AS
BEGIN
    -- Insert hashed password using SHA-256
    INSERT INTO accounts (name, email, password)
    VALUES (@name, @email, HASHBYTES('SHA2_256', @password));
END; 