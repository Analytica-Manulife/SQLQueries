CREATE PROCEDURE GetTotalTransactionsByDate
    @AccountID UNIQUEIDENTIFIER
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT 
        CAST(transaction_date AS DATE) AS TransactionDate,
        account_id,
        SUM(CASE WHEN amount_type = 'send' THEN amount ELSE 0 END) AS Total_Spent,
        SUM(CASE WHEN amount_type = 'receive' THEN amount ELSE 0 END) AS Total_Received
    FROM transactions
    WHERE account_id = @AccountID
    GROUP BY CAST(transaction_date AS DATE), account_id;
END;
