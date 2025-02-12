CREATE PROCEDURE UpdateStocks
    @ticker VARCHAR(10),
    @company_name NVARCHAR(255),
    @open_price DECIMAL(10,2),
    @high_price DECIMAL(10,2),
    @low_price DECIMAL(10,2),
    @price DECIMAL(10,2),
    @volume BIGINT,
    @change_amount DECIMAL(10,2),
    @change_percent VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;
    
    IF EXISTS (SELECT 1 FROM Stocks WHERE ticker = @ticker)
    BEGIN
        UPDATE Stocks
        SET 
            company_name = @company_name,
            open_price = @open_price,
            high_price = @high_price,
            low_price = @low_price,
            price = @price,
            volume = @volume,
            latest_trading_day = GETDATE(),  -- Use current date directly
            change_amount = @change_amount,
            change_percent = @change_percent,
            last_updated = GETDATE()
        WHERE ticker = @ticker;
    END
    ELSE
    BEGIN
        INSERT INTO Stocks (ticker, company_name, open_price, high_price, low_price, price, volume, latest_trading_day, change_amount, change_percent, last_updated)
        VALUES (@ticker, @company_name, @open_price, @high_price, @low_price, @price, @volume, GETDATE(), @change_amount, @change_percent, GETDATE());
    END
END;