CREATE TABLE transactions (
    transaction_id UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,
    account_id UNIQUEIDENTIFIER NOT NULL,
    amount_type NVARCHAR(10) CHECK (amount_type IN ('send', 'receive')) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    details NVARCHAR(255),
    transaction_date DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id) ON DELETE CASCADE
);

-- Inserting dummy transactions
-- INSERT INTO transactions (transaction_id, account_id, amount_type, amount, details, transaction_date)  
-- VALUES  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'send', 250.00, 'Payment for groceries', GETDATE()),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'receive', 500.00, 'Salary credit', GETDATE()),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'send', 100.50, 'Online shopping', GETDATE()),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'receive', 200.00, 'Freelance payment', GETDATE()),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'send', 75.25, 'Electricity bill', GETDATE());  
