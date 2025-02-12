-- CREATE TABLE Stocks (
--     ticker VARCHAR(10) PRIMARY KEY,
--     company_name NVARCHAR(255),
--     yahoo_api_url NVARCHAR(500),
--     last_price DECIMAL(10,2),
--     last_updated DATETIME DEFAULT GETDATE()
-- );


-- INSERT INTO Stocks (ticker, company_name, yahoo_api_url) VALUES
-- ('AAPL', 'Apple Inc.', 'https://query1.finance.yahoo.com/v7/finance/quote?symbols=AAPL'),
-- ('MSFT', 'Microsoft Corporation', 'https://query1.finance.yahoo.com/v7/finance/quote?symbols=MSFT'),
-- ('GOOGL', 'Alphabet Inc. (Google)', 'https://query1.finance.yahoo.com/v7/finance/quote?symbols=GOOGL'),
-- ('AMZN', 'Amazon.com, Inc.', 'https://query1.finance.yahoo.com/v7/finance/quote?symbols=AMZN'),
-- ('TSLA', 'Tesla, Inc.', 'https://query1.finance.yahoo.com/v7/finance/quote?symbols=TSLA'),
-- ('META', 'Meta Platforms Inc. (Facebook)', 'https://query1.finance.yahoo.com/v7/finance/quote?symbols=META'),
-- ('NVDA', 'NVIDIA Corporation', 'https://query1.finance.yahoo.com/v7/finance/quote?symbols=NVDA'),
-- ('NFLX', 'Netflix, Inc.', 'https://query1.finance.yahoo.com/v7/finance/quote?symbols=NFLX'),
-- ('BRK.B', 'Berkshire Hathaway Inc.', 'https://query1.finance.yahoo.com/v7/finance/quote?symbols=BRK.B'),
-- ('JPM', 'JPMorgan Chase & Co.', 'https://query1.finance.yahoo.com/v7/finance/quote?symbols=JPM'),
-- ('V', 'Visa Inc.', 'https://query1.finance.yahoo.com/v7/finance/quote?symbols=V'),
-- ('PYPL', 'PayPal Holdings, Inc.', 'https://query1.finance.yahoo.com/v7/finance/quote?symbols=PYPL'),
-- ('DIS', 'The Walt Disney Company', 'https://query1.finance.yahoo.com/v7/finance/quote?symbols=DIS'),
-- ('PEP', 'PepsiCo, Inc.', 'https://query1.finance.yahoo.com/v7/finance/quote?symbols=PEP'),
-- ('KO', 'The Coca-Cola Company', 'https://query1.finance.yahoo.com/v7/finance/quote?symbols=KO');

-- ALTER TABLE Stocks ADD stock_type VARCHAR(50);
ALTER TABLE Stocks ADD logo VARCHAR(255);


DELETE FROM Stocks;

INSERT INTO Stocks (ticker, company_name, yahoo_api_url, last_price, last_updated, stock_type, open_price, high_price, low_price, price, volume, latest_trading_day, change_amount, change_percent, logo) VALUES
('AAPL', 'Apple Inc.', 'https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=AAPL&apikey=SML2YU4Z8XXXXT4Z', 175.50, 175.50, 'Tech', 174.80, 176.50, 173.90, 175.50, 54321000, '2025-02-07', 1.70, '0.98%', 'https://logo.clearbit.com/apple.com'),
('MSFT', 'Microsoft Corporation', 'https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=MSFT&apikey=SML2YU4Z8XXXXT4Z', 320.75, 321, 'Tech', 319.20, 322.10, 318.50, 320.75, 39123400, '2025-02-07', 2.50, '0.79%', 'https://logo.clearbit.com/microsoft.com'),
('GOOGL', 'Alphabet Inc. (Google)', 'https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=GOOGL&apikey=SML2YU4Z8XXXXT4Z', 2750.00, 2700, 'Tech', 2735.50, 2765.20, 2725.80, 2750.00, 18943000, '2025-02-07', 15.50, '0.56%', 'https://logo.clearbit.com/abc.xyz'),
('AMZN', 'Amazon.com, Inc.', 'https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=AMZN&apikey=SML2YU4Z8XXXXT4Z', 3450.55, 3560.55, 'E-Commerce', 3435.00, 3470.50, 3420.10, 3450.55, 25213400, '2025-02-07', 20.45, '0.60%', 'https://logo.clearbit.com/amazon.com'),
('TSLA', 'Tesla, Inc.', 'https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=TSLA&apikey=SML2YU4Z8XXXXT4Z', 950.30, 950.30, 'Automobile', 940.80, 960.00, 935.50, 950.30, 30214500, '2025-02-07', 9.50, '1.01%', 'https://logo.clearbit.com/tesla.com'),
('META', 'Meta Platforms Inc. (Facebook)', 'https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=META&apikey=SML2YU4Z8XXXXT4Z', 320.90, 320, 'Tech', 318.50, 323.20, 317.00, 320.90, 17234000, '2025-02-07', 2.40, '0.75%', 'https://logo.clearbit.com/meta.com'),
('NVDA', 'NVIDIA Corporation', 'https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=NVDA&apikey=SML2YU4Z8XXXXT4Z', 650.80, 650, 'Tech', 645.00, 655.90, 640.20, 650.80, 21543200, '2025-02-07', 5.80, '0.90%', 'https://logo.clearbit.com/nvidia.com'),
('NFLX', 'Netflix, Inc.', 'https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=NFLX&apikey=SML2YU4Z8XXXXT4Z', 450.25, 400, 'Entertainment', 445.80, 455.50, 440.60, 450.25, 11432000, '2025-02-07', 4.45, '0.99%', 'https://logo.clearbit.com/netflix.com'),
('BRK.B', 'Berkshire Hathaway Inc.', 'https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=BRK.B&apikey=SML2YU4Z8XXXXT4Z', 280.45, 300, 'Finance', 278.00, 282.30, 277.50, 280.45, 8423100, '2025-02-07', 2.45, '0.88%', 'https://logo.clearbit.com/berkshirehathaway.com'),
('JPM', 'JPMorgan Chase & Co.', 'https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=JPM&apikey=SML2YU4Z8XXXXT4Z', 145.10, 150, 'Finance', 143.80, 146.50, 142.90, 145.10, 12450000, '2025-02-07', 1.30, '0.90%', 'https://logo.clearbit.com/jpmorganchase.com'),
('V', 'Visa Inc.', 'https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=V&apikey=SML2YU4Z8XXXXT4Z', 225.75, 230, 'Finance', 224.20, 228.00, 223.10, 225.75, 8412000, '2025-02-07', 1.55, '0.69%', 'https://logo.clearbit.com/visa.com'),
('PYPL', 'PayPal Holdings, Inc.', 'https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=PYPL&apikey=SML2YU4Z8XXXXT4Z', 120.85,115, 'Finance', 119.50, 122.30, 118.75, 120.85, 9234000, '2025-02-07', 1.35, '1.13%', 'https://logo.clearbit.com/paypal.com'),
('DIS', 'The Walt Disney Company', 'https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=DIS&apikey=SML2YU4Z8XXXXT4Z', 180.60, 196, 'Entertainment', 178.20, 182.00, 177.50, 180.60, 7234000, '2025-02-07', 2.40, '1.35%', 'https://logo.clearbit.com/disney.com'),
('PEP', 'PepsiCo, Inc.', 'https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=PEP&apikey=SML2YU4Z8XXXXT4Z', 170.40, 156, 'Consumer Goods', 168.90, 172.00, 168.20, 170.40, 5123000, '2025-02-07', 1.50, '0.89%', 'https://logo.clearbit.com/pepsico.com'),
('KO', 'The Coca-Cola Company', 'https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=KO&apikey=SML2YU4Z8XXXXT4Z', 62.35, 65.23, 'Consumer Goods', 61.90, 63.00, 61.50, 62.35, 8234000, '2025-02-07', 0.45, '0.73%', 'https://logo.clearbit.com/coca-cola.com'),
('SPY', 'S&P 500 ETF Trust', 'https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=SPY&apikey=SML2YU4Z8XXXXT4Z', 450.90,460.33, 'Index', 448.50, 453.20, 447.80, 450.90, 11234000, '2025-02-07', 2.40, '0.54%', 'https://logo.clearbit.com/spdrs.com'),
('GS', 'Goldman Sachs Group Inc.', 'https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=GS&apikey=SML2YU4Z8XXXXT4Z', 355.60, 370, 'Finance', 353.00, 358.40, 351.80, 355.60, 4321000, '2025-02-07', 2.60, '0.74%', 'https://logo.clearbit.com/goldmansachs.com');

