CREATE PROCEDURE GetStockData
    @ticker VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        ticker,
        company_name,
        open_price,
        high_price,
        low_price,
        price,
        volume,
        latest_trading_day,
        change_amount,
        change_percent,
        last_updated
    FROM 
        Stocks
    WHERE 
        ticker = @ticker;
END;