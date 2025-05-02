-- Step 1: Switch to master database
USE master;
GO

-- Step 2: Create a login
CREATE LOGIN my_sql_user WITH PASSWORD = 'YourPassword123!';
GO

-- Step 3: Switch to the target database
USE AnalyticaDatabase;
GO

-- Step 4: Create a user in the target database
CREATE USER my_sql_user FOR LOGIN my_sql_user;
GO

-- Step 5: Grant roles
ALTER ROLE db_datareader ADD MEMBER my_sql_user;
ALTER ROLE db_datawriter ADD MEMBER my_sql_user;
GO
