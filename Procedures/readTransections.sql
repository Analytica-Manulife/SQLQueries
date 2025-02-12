CREATE PROCEDURE GetTransactionsByAccountID  
    @account_id UNIQUEIDENTIFIER  
AS  
BEGIN  
    SELECT transaction_id, account_id, amount_type, amount, details, transaction_date  
    FROM transactions  
    WHERE account_id = @account_id  
    ORDER BY transaction_date DESC;  
END;
