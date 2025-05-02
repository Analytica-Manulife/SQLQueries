-- Creating news table
CREATE TABLE NewsArticles (
    news_id INT IDENTITY(1,1) PRIMARY KEY,
    headline NVARCHAR(255) NOT NULL,
    content NVARCHAR(MAX) NOT NULL,
    article_link NVARCHAR(500) NOT NULL,
    image_link NVARCHAR(500) NULL
);

ALTER TABLE NewsArticles
ADD company NVARCHAR(255) NULL;

INSERT INTO NewsArticles (headline, content, article_link, image_link, company)
VALUES
('Canada''s Budget Deficit Widens to C$22.72 Billion',
 'Canada''s budget deficit for the first eight months of the 2024/25 fiscal year reached C$22.72 billion due to increased government expenditures.',
 'https://www.reuters.com/world/americas/canada-budget-deficit-over-first-eight-months-202425-jumps-c2272-bln-2025-01-31/',
 'https://www.reuters.com/resizer/URL_to_image1.jpg',
 'Government of Canada'),

('Canada Prepares Retaliatory Tariffs Against U.S.',
 'Canada may impose 100% tariffs on Tesla cars and U.S. alcohol in response to new American tariffs.',
 'https://www.ft.com/content/f177fcbe-d632-4685-8541-ac537ba227f6',
 'https://www.ft.com/__origami/service/image/v2/images/raw/URL_to_image2.jpg',
 'Tesla'),

('Inflation Impacts Half of Canadians'' Finances',
 'A report shows 50% of Canadians feel worse off financially due to inflation.',
 'https://canadanewsmedia.ca/inflation-half-of-canadians-finances-worse-than-last-year-ctv-news-2/',
 'https://canadanewsmedia.ca/wp-content/uploads/2024/12/URL_to_image3.jpg',
 NULL),

('SoftBank Returns to Profit After Gains in Vision Fund',
 'SoftBank posted a profit of 1.18 trillion yen, thanks to its Vision Fund gains.',
 'https://www.bloomberg.com/softbank-vision-fund-profit',
 'https://cdn.bloomberg.com/images/URL_to_image4.jpg',
 'SoftBank'),

('Shopify Executives Downplay Impact of U.S. Tariffs',
 'Shopify is confident U.S. tariffs won’t significantly hurt entrepreneurs.',
 'https://www.shopify.ca/news/u-s-tariffs-impact',
 'https://cdn.shopify.com/images/URL_to_image5.jpg',
 'Shopify'),

('European Central Bank Cuts Benchmark Rate',
 'The ECB cut rates amid declining inflation to boost growth.',
 'https://www.ecb.europa.eu/press/pr/date/2025/html/ecb.policy.rate-cut.html',
 'https://s.yimg.com/ny/api/res/URL_to_image6.jpg',
 'European Central Bank'),

('Microsoft 365 Experiences Widespread Outage',
 'A major outage affected Microsoft 365 users globally.',
 'https://ca.finance.yahoo.com/',
 'https://s.yimg.com/ny/api/res/URL_to_image7.jpg',
 'Microsoft'),

('U.S. Treasury Proposes New Corporate Minimum Tax Rules',
 'Proposed U.S. tax rules could affect Canadian firms operating in the U.S.',
 'https://ca.finance.yahoo.com/',
 'https://s.yimg.com/ny/api/res/URL_to_image8.jpg',
 'U.S. Treasury'),

('Institute for Sustainable Finance Urges Canada to Accelerate Efforts',
 'Canada must speed up green finance initiatives, says a new ISF report.',
 'https://smith.queensu.ca/centres/isf/news/progres-finance-durable.php',
 'https://smith.queensu.ca/centres/isf/images/URL_to_image9.jpg',
 'Institute for Sustainable Finance'),

('Trump Mocks Trudeau Amid Tariff Dispute',
 'Trump mocked Trudeau after Freeland''s resignation over U.S. tariffs.',
 'https://nypost.com/2024/12/17/us-news/trump-mocks-justin-trudeau-after-top-ministers-shock-exit-after-tarrif-clash-the-great-state-of-canada-is-stunned/',
 'https://nypost.com/wp-content/uploads/2024/12/URL_to_image10.jpg',
 'Government of Canada'),

('Apple Unveils AI-Powered iOS Update at WWDC',
 'Apple launched new AI features in iOS 19, including smarter Siri.',
 'https://www.apple.com/newsroom/2025/ios19-ai-announcement/',
 'https://apple.com/images/ios19-ai.jpg',
 'Apple'),

('Google Fined €2 Billion Over Ads Monopoly',
 'EU fined Google €2B for anti-competitive ad practices.',
 'https://www.bbc.com/news/technology-google-eu-fine-2025',
 'https://bbc.com/news/images/google-fine.jpg',
 'Google'),

('Meta Rolls Out Threads 2.0 in Canada',
 'Meta’s Twitter competitor Threads now includes enhanced engagement features.',
 'https://www.meta.com/news/threads-2-canada/',
 'https://meta.com/images/threads2.jpg',
 'Meta'),

('Netflix to Expand Gaming Portfolio in 2025',
 'Netflix plans to release 10 original mobile games.',
 'https://www.netflixinvestor.com/news/gaming-2025',
 'https://netflix.com/images/gaming2025.jpg',
 'Netflix'),

('Amazon Plans to Launch 1,000 Delivery Drones',
 'Amazon will expand drone delivery across rural Canada.',
 'https://www.amazon.ca/delivery-drones-2025-launch',
 'https://amazon.ca/images/drones.jpg',
 'Amazon'),

('OpenAI Introduces GPT-5 with Enhanced Reasoning',
 'GPT-5 includes improved context retention and reasoning capabilities.',
 'https://openai.com/research/gpt-5/',
 'https://openai.com/images/gpt5.jpg',
 'OpenAI'),

('Air Canada Announces Major Fleet Upgrade',
 'Air Canada to invest $2B in new energy-efficient aircraft.',
 'https://www.aircanada.com/en/news/fleet-upgrade-2025',
 'https://aircanada.com/images/fleet2025.jpg',
 'Air Canada'),

('Boeing Faces New Scrutiny After Safety Report',
 'Boeing under fire after whistleblower leaks internal safety concerns.',
 'https://www.nytimes.com/2025/boeing-safety-report.html',
 'https://nytimes.com/images/boeing.jpg',
 'Boeing'),

('NVIDIA Revenue Surges 200% Year-over-Year',
 'NVIDIA’s Q1 earnings show massive growth driven by AI chip sales.',
 'https://www.nvidia.com/en-us/newsroom/ai-revenue-growth/',
 'https://nvidia.com/images/ai-growth.jpg',
 'NVIDIA'),

('TikTok Canada Under Investigation for Data Handling',
 'Privacy Commissioner investigates TikTok over Canadian user data concerns.',
 'https://www.priv.gc.ca/en/opc-news/news-and-announcements/2025/tiktok-data-canada/',
 'https://cdn.tiktok.com/images/privacy2025.jpg',
 'TikTok');

-- Addint dummy news articles
-- INSERT INTO NewsArticles (headline, content, article_link, image_link)
-- VALUES
-- ('Canada''s Budget Deficit Widens to C$22.72 Billion',
--  'Canada''s budget deficit for the first eight months of the 2024/25 fiscal year reached C$22.72 billion, up from C$19.14 billion the previous year, due to government expenditures growing faster than revenues.',
--  'https://www.reuters.com/world/americas/canada-budget-deficit-over-first-eight-months-202425-jumps-c2272-bln-2025-01-31/',
--  'https://www.reuters.com/resizer/URL_to_image1.jpg'),
-- ('Canada Prepares Retaliatory Tariffs Against U.S.',
--  'In response to proposed U.S. tariffs, former Canadian finance minister Chrystia Freeland suggests imposing 100% tariffs on Tesla vehicles and American alcoholic beverages to exert political pressure.',
--  'https://www.ft.com/content/f177fcbe-d632-4685-8541-ac537ba227f6',
--  'https://www.ft.com/__origami/service/image/v2/images/raw/URL_to_image2.jpg'),
-- ('Inflation Impacts Half of Canadians'' Finances',
--  'A recent report indicates that half of Canadians feel their financial situation has worsened compared to the previous year, primarily due to rising inflation rates.',
--  'https://canadanewsmedia.ca/inflation-half-of-canadians-finances-worse-than-last-year-ctv-news-2/',
--  'https://canadanewsmedia.ca/wp-content/uploads/2024/12/URL_to_image3.jpg'),
-- ('SoftBank Returns to Profit After Gains in Vision Fund',
--  'Japanese technology group SoftBank reported a fiscal second-quarter profit of nearly 1.18 trillion yen, boosted by positive results in its Vision Fund investments.',
--  'https://canadanewsmedia.ca/inflation-half-of-canadians-finances-worse-than-last-year-ctv-news-2/',
--  'https://canadanewsmedia.ca/wp-content/uploads/2024/12/URL_to_image4.jpg'),
-- ('Shopify Executives Downplay Impact of U.S. Tariffs',
--  'Shopify Inc. executives express confidence that incoming U.S. tariffs will not significantly harm entrepreneurship, emphasizing the resilience of new business formations.',
--  'https://canadanewsmedia.ca/inflation-half-of-canadians-finances-worse-than-last-year-ctv-news-2/',
--  'https://canadanewsmedia.ca/wp-content/uploads/2024/12/URL_to_image5.jpg'),
-- ('European Central Bank Cuts Benchmark Rate',
--  'The European Central Bank reduced interest rates to support economic growth as inflation declines, a move that could have implications for Canadian markets.',
--  'https://ca.finance.yahoo.com/',
--  'https://s.yimg.com/ny/api/res/URL_to_image6.jpg'),
-- ('Microsoft 365 Experiences Widespread Outage',
--  'Microsoft''s suite of productivity software faced a significant outage, affecting thousands of users and potentially impacting Canadian businesses relying on these services.',
--  'https://ca.finance.yahoo.com/',
--  'https://s.yimg.com/ny/api/res/URL_to_image7.jpg'),
-- ('U.S. Treasury Proposes New Corporate Minimum Tax Rules',
--  'The U.S. Treasury announced proposed rules for a new corporate alternative minimum tax, which could influence Canadian companies operating in the U.S.',
--  'https://ca.finance.yahoo.com/',
--  'https://s.yimg.com/ny/api/res/URL_to_image8.jpg'),
-- ('Institute for Sustainable Finance Urges Canada to Accelerate Efforts',
--  'A new report from the Institute for Sustainable Finance emphasizes the need for Canada to speed up its sustainable finance initiatives to remain competitive globally.',
--  'https://smith.queensu.ca/centres/isf/news/progres-finance-durable.php',
--  'https://smith.queensu.ca/centres/isf/images/URL_to_image9.jpg'),
-- ('Trump Mocks Trudeau Amid Tariff Dispute',
--  'Former U.S. President Donald Trump mocked Canadian Prime Minister Justin Trudeau following the resignation of Finance Minister Chrystia Freeland amid tariff disagreements.',
--  'https://nypost.com/2024/12/17/us-news/trump-mocks-justin-trudeau-after-top-ministers-shock-exit-after-tarrif-clash-the-great-state-of-canada-is-stunned/',
--  'https://nypost.com/wp-content/uploads/2024/12/URL_to_image10.jpg');

-- ALTER TABLE NewsArticles
-- ADD company NVARCHAR(255) NULL;  -- Use NULL if the column can have empty values, otherwise use NOT NULL