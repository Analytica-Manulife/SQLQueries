CREATE TABLE budgets (
    budget_id UNIQUEIDENTIFIER 
        CONSTRAINT PK_Budgets PRIMARY KEY 
        DEFAULT NEWID(),
    account_id UNIQUEIDENTIFIER 
        NOT NULL
        CONSTRAINT FK_Budgets_Accounts REFERENCES accounts(account_id),
    period_start DATE       NOT NULL,
    period_end   DATE       NOT NULL,
    -- Core budget categories
    entertainment_budget  DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    education_budget      DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    investment_budget     DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    daily_needs_budget    DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    -- Additional typical categories
    housing_budget        DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    utilities_budget      DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    transportation_budget DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    healthcare_budget     DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    savings_goal          DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    travel_budget         DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    -- Optionally track creation/update metadata
    created_at    DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
    updated_at    DATETIME2 NULL
);

-- Optional: ensure one budget record per account per period
ALTER TABLE budgets
ADD CONSTRAINT UQ_Budgets_Account_Period
    UNIQUE (account_id, period_start, period_end);
