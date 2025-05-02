CREATE TABLE portfolio (
    portfolio_id UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,
    account_id UNIQUEIDENTIFIER NOT NULL,
    ticker NVARCHAR(50) NOT NULL, -- Assuming ticker is a unique identifier for stocks
    buy_price DECIMAL(18,2) NOT NULL,
    buy_date DATETIME NOT NULL DEFAULT GETDATE(),
    quantity INT NOT NULL,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);