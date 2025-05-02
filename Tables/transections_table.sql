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

-- Inserting 30 new transactions over the past 2 months
-- INSERT INTO transactions (transaction_id, account_id, amount_type, amount, details, transaction_date)  
-- VALUES  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'send', 120.00, 'Restaurant bill', DATEADD(DAY, -5, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'receive', 1500.00, 'Monthly salary', DATEADD(DAY, -30, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'send', 45.75, 'Coffee shop', DATEADD(DAY, -10, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'receive', 300.00, 'Freelance work', DATEADD(DAY, -25, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'send', 90.50, 'Gas refill', DATEADD(DAY, -15, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'receive', 400.00, 'Client payment', DATEADD(DAY, -40, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'send', 130.00, 'Gym membership', DATEADD(DAY, -18, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'receive', 250.00, 'Gift from friend', DATEADD(DAY, -8, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'send', 80.00, 'Movie tickets', DATEADD(DAY, -3, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'receive', 600.00, 'Side project earnings', DATEADD(DAY, -50, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'send', 200.00, 'Online course fee', DATEADD(DAY, -12, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'receive', 50.00, 'Reimbursement', DATEADD(DAY, -20, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'send', 15.99, 'Subscription renewal', DATEADD(DAY, -28, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'receive', 75.00, 'Birthday gift', DATEADD(DAY, -7, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'send', 98.50, 'Pharmacy', DATEADD(DAY, -14, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'receive', 2000.00, 'Year-end bonus', DATEADD(DAY, -60, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'send', 350.00, 'Car repair', DATEADD(DAY, -45, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'receive', 500.00, 'Consultation fee', DATEADD(DAY, -33, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'send', 27.99, 'Streaming service', DATEADD(DAY, -21, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'receive', 60.00, 'Cashback reward', DATEADD(DAY, -19, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'send', 110.00, 'Gift purchase', DATEADD(DAY, -6, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'receive', 220.00, 'Dividend payout', DATEADD(DAY, -48, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'send', 275.00, 'Electronics purchase', DATEADD(DAY, -35, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'receive', 130.00, 'Refund for return', DATEADD(DAY, -11, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'send', 59.99, 'Bookstore', DATEADD(DAY, -16, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'receive', 800.00, 'Stock profit', DATEADD(DAY, -55, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'send', 95.00, 'Concert tickets', DATEADD(DAY, -9, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'receive', 500.00, 'Bonus payout', DATEADD(DAY, -22, GETDATE())),  
--     (NEWID(), '354705e4-d3ec-4980-81b6-4e5ef4ac8c05', 'send', 45.00, 'Taxi fare', DATEADD(DAY, -4, GETDATE()));  
