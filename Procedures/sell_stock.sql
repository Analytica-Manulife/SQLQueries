CREATE PROCEDURE SellStock
    @account_id UNIQUEIDENTIFIER,
    @ticker NVARCHAR(50),
    @quantity INT,
    @sell_price DECIMAL(18,2)
AS
BEGIN
    DECLARE @total_earnings DECIMAL(18,2) = @quantity * @sell_price;
    DECLARE @current_quantity INT;

    -- Check if the account owns the stock and has enough quantity to sell
    SELECT @current_quantity = quantity
    FROM portfolio
    WHERE account_id = @account_id AND ticker = @ticker;

    IF @current_quantity IS NULL OR @current_quantity < @quantity
    BEGIN
        RAISERROR('Insufficient stock quantity to sell.', 16, 1);
        RETURN;
    END

    -- Begin transaction
    BEGIN TRANSACTION;

    -- Update account balance
    UPDATE accounts
    SET balance = balance + @total_earnings
    WHERE account_id = @account_id;

    -- Update or remove the stock from the portfolio
    IF @current_quantity = @quantity
    BEGIN
        -- Remove the stock from the portfolio if all shares are sold
        DELETE FROM portfolio
        WHERE account_id = @account_id AND ticker = @ticker;
    END
    ELSE
    BEGIN
        -- Update the portfolio with the remaining quantity
        UPDATE portfolio
        SET quantity = quantity - @quantity
        WHERE account_id = @account_id AND ticker = @ticker;
    END

    -- Record the transaction
    INSERT INTO stock_transactions (account_id, transaction_type, amount, ticker, quantity, transaction_date)
    VALUES (@account_id, 'SELL', @total_earnings, @ticker, @quantity, GETDATE());

    -- Commit transaction
    COMMIT TRANSACTION;

    PRINT 'Stock sale successful.';
END;