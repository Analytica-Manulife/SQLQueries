CREATE TABLE stock_transactions (
    transaction_id UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,
    account_id UNIQUEIDENTIFIER NOT NULL,
    transaction_type NVARCHAR(50) NOT NULL, -- e.g., 'BUY', 'SELL'
    amount DECIMAL(18,2) NOT NULL,
    transaction_date DATETIME NOT NULL DEFAULT GETDATE(),
    ticker NVARCHAR(50) NOT NULL, -- The stock ticker symbol (e.g., AAPL)
    quantity INT NOT NULL, -- The number of shares involved
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);