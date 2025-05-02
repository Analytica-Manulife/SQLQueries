-- CREATE accounts table;
CREATE TABLE accounts (
    account_id UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,
    password NVARCHAR(255) NOT NULL,
    portfolio NVARCHAR(MAX),
    email NVARCHAR(255) UNIQUE NOT NULL,
    name NVARCHAR(100) NOT NULL,
    balance DECIMAL(18,2) NOT NULL DEFAULT 0.00
);


-- Creating dummy accounts
-- INSERT INTO accounts (account_id, password, portfolio, email, name)
-- VALUES 
--     (NEWID(), 'Pass@123', 'Portfolio Data 1', 'user1@example.com', 'John Doe'),
--     (NEWID(), 'Secret@456', 'Portfolio Data 2', 'user2@example.com', 'Jane Smith'),
--     (NEWID(), 'MyPass@789', 'Portfolio Data 3', 'user3@example.com', 'Alice Johnson'),
--     (NEWID(), 'Secure@101', 'Portfolio Data 4', 'user4@example.com', 'Bob Williams'),
--     (NEWID(), 'Random@202', 'Portfolio Data 5', 'user5@example.com', 'Charlie Brown');

-- ALTER TABLE Accounts  
-- ADD balance DECIMAL(18,2) NOT NULL DEFAULT 0.00;


CREATE LOGIN my_sql_user WITH PASSWORD = 'YourPassword123!';
