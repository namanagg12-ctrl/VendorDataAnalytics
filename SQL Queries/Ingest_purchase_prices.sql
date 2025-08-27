-- Drop the table if it already exists
IF OBJECT_ID('dbo.purchase_prices', 'U') IS NOT NULL
    DROP TABLE dbo.purchase_prices;

-- Create the table with columns matching your CSV
CREATE TABLE dbo.purchase_prices (
    Brand INT,
    Description NVARCHAR(200),
    Price DECIMAL(18,2),
    Size NVARCHAR(50),
    Volume NVARCHAR(50),
    Classification INT,
    PurchasePrice DECIMAL(18,2),
    VendorNumber INT,
    VendorName NVARCHAR(200)
);

-- Import CSV into SQL Server
BULK INSERT dbo.purchase_prices
FROM '/var/opt/mssql/data/VendorDataProject/Tables/purchase_prices.csv'
WITH (
    FIRSTROW = 2,            -- Skip header row
    FIELDTERMINATOR = ',',    -- CSV delimiter
    ROWTERMINATOR = '\n',     -- Line break
    TABLOCK
);

-- Verify first 10 rows
SELECT TOP 10 * FROM dbo.purchase_prices;