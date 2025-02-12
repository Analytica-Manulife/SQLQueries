CREATE TABLE Portfolio (
    id UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,
    account_id UNIQUEIDENTIFIER NOT NULL,
    ticker NVARCHAR(10) NOT NULL,
    buy_price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    purchase_date DATE NOT NULL,
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id) ON DELETE CASCADE
);

drop table if exists Portfolio;