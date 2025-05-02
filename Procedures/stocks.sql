CREATE PROCEDURE UpdateStock
    @ticker VARCHAR(10),
    @company_name NVARCHAR(255) = NULL,
    @open_price DECIMAL(10,2) = NULL,
    @high_price DECIMAL(10,2) = NULL,
    @low_price DECIMAL(10,2) = NULL,
    @price DECIMAL(10,2) = NULL,
    @volume BIGINT = NULL,
    @latest_trading_day DATE = NULL,
    @change_amount DECIMAL(10,2) = NULL,
    @change_percent VARCHAR(10) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    IF EXISTS (SELECT 1 FROM Stocks WHERE ticker = @ticker)
    BEGIN
        UPDATE Stocks
        SET 
            company_name = ISNULL(@company_name, company_name),  
            open_price = ISNULL(@open_price, open_price),        
            high_price = ISNULL(@high_price, high_price),        
            low_price = ISNULL(@low_price, low_price),           
            price = ISNULL(@price, price),                      
            volume = ISNULL(@volume, volume),                   
            latest_trading_day = ISNULL(@latest_trading_day, latest_trading_day), 
            change_amount = ISNULL(@change_amount, change_amount), 
            change_percent = ISNULL(@change_percent, change_percent), 
            last_updated = GETDATE()  
        WHERE ticker = @ticker;
    END
    ELSE
    BEGIN
        -- If the ticker does not exist, insert a new record
        -- Ensure required fields are not NULL (e.g., @ticker, @price, etc.)
        INSERT INTO Stocks (ticker, company_name, open_price, high_price, low_price, price, volume, latest_trading_day, change_amount, change_percent, last_updated)
        VALUES (
            @ticker,
            ISNULL(@company_name, 'Unknown'),  
            ISNULL(@open_price, 0),            
            ISNULL(@high_price, 0),          
            ISNULL(@low_price, 0),             
            ISNULL(@price, 0),                 
            ISNULL(@volume, 0),                
            ISNULL(@latest_trading_day, GETDATE()), 
            ISNULL(@change_amount, 0),         
            ISNULL(@change_percent, '0%'),     
            GETDATE()
        );
    END
END;