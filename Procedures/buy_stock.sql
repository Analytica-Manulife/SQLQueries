CREATE PROCEDURE BuyStock
    @account_id UNIQUEIDENTIFIER,
    @ticker NVARCHAR(50),
    @quantity INT,
    @buy_price DECIMAL(18,2)
AS
BEGIN
    DECLARE @total_cost DECIMAL(18,2) = @quantity * @buy_price;

    -- Check if the account has sufficient balance
    IF (SELECT balance FROM accounts WHERE account_id = @account_id) < @total_cost
    BEGIN
        RAISERROR('Insufficient balance to buy the stocks.', 16, 1);
        RETURN;
    END

    -- Begin transaction
    BEGIN TRANSACTION;

    -- Update account balance
    UPDATE accounts
    SET balance = balance - @total_cost
    WHERE account_id = @account_id;

    -- Add the stock to the portfolio
    IF EXISTS (SELECT 1 FROM portfolio WHERE account_id = @account_id AND ticker = @ticker)
    BEGIN
        -- Update existing portfolio entry
        UPDATE portfolio
        SET quantity = quantity + @quantity,
            buy_price = ((buy_price * quantity) + (@buy_price * @quantity)) / (quantity + @quantity) -- Weighted average buy price
        WHERE account_id = @account_id AND ticker = @ticker;
    END
    ELSE
    BEGIN
        -- Insert new portfolio entry
        INSERT INTO portfolio (account_id, ticker, buy_price, quantity, buy_date)
        VALUES (@account_id, @ticker, @buy_price, @quantity, GETDATE());
    END

    -- Record the transaction
    INSERT INTO stock_transactions (account_id, transaction_type, amount, ticker, quantity, transaction_date)
    VALUES (@account_id, 'BUY', @total_cost, @ticker, @quantity, GETDATE());

    -- Commit transaction
    COMMIT TRANSACTION;

    PRINT 'Stock purchase successful.';
END;