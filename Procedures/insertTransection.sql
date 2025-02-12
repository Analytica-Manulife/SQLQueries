CREATE PROCEDURE InsertTransaction  
    @account_id UNIQUEIDENTIFIER,  
    @amount_type NVARCHAR(10),  
    @amount DECIMAL(10,2),  
    @details NVARCHAR(255)  
AS  
BEGIN  
    INSERT INTO transactions (transaction_id, account_id, amount_type, amount, details, transaction_date)  
    VALUES (NEWID(), @account_id, @amount_type, @amount, @details, GETDATE());  
END;
