CREATE PROCEDURE GetPortfolioWithStocks
    @account_id UNIQUEIDENTIFIER
AS
BEGIN
    -- Join the portfolio and Stocks tables based on the ticker and account_id
    SELECT 
        p.portfolio_id,
        p.account_id,
        p.ticker,
        p.buy_price,
        p.buy_date,
        p.quantity,
        s.company_name,
        s.yahoo_api_url,
        s.last_price,
        s.last_updated,
        s.stock_type,
        s.open_price,
        s.high_price,
        s.low_price,
        s.price,
        s.volume,
        s.latest_trading_day,
        s.change_amount,
        s.change_percent,
        s.logo
    FROM 
        portfolio p
    INNER JOIN 
        Stocks s ON p.ticker = s.ticker
    WHERE 
        p.account_id = @account_id;
END;