CREATE PROCEDURE GetBuyValueVsCurrentValue
    @account_id UNIQUEIDENTIFIER
AS
BEGIN
    -- Calculate the average buy value vs. the current value per ticker
    SELECT 
        p.ticker,
        SUM(p.quantity) AS total_quantity,
        SUM(p.buy_price * p.quantity) / NULLIF(SUM(p.quantity), 0) AS avg_buy_price,
        s.price AS current_price,
        (SUM(p.buy_price * p.quantity) / NULLIF(SUM(p.quantity), 0)) * SUM(p.quantity) AS total_buy_value,
        s.price * SUM(p.quantity) AS total_current_value,
        ((s.price - (SUM(p.buy_price * p.quantity) / NULLIF(SUM(p.quantity), 0))) / 
         NULLIF((SUM(p.buy_price * p.quantity) / NULLIF(SUM(p.quantity), 0)), 0)) * 100 AS percent_change
    FROM 
        portfolio p
    INNER JOIN 
        Stocks s ON p.ticker = s.ticker
    WHERE 
        p.account_id = @account_id
    GROUP BY 
        p.ticker, s.price;
END;
