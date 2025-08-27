-- Drop the table if it already exists
IF OBJECT_ID('dbo.end_inventory', 'U') IS NOT NULL
    DROP TABLE dbo.end_inventory;

-- Create the table with columns matching your CSV
CREATE TABLE dbo.end_inventory (
    InventoryId NVARCHAR(100),
    Store INT,
    City NVARCHAR(100),
    Brand INT,
    Descriptor NVARCHAR(100),
    Size NVARCHAR(50),
    onHand INT,
    Price DECIMAL(18,2),
    endDate DATE
);

-- Import CSV into SQL Server
BULK INSERT dbo.end_inventory
FROM '/var/opt/mssql/data/VendorDataProject/Tables/end_inventory.csv'
WITH (
    FIRSTROW = 2,            -- Skip header row
    FIELDTERMINATOR = ',',    -- CSV delimiter
    ROWTERMINATOR = '\n',     -- Line break
    TABLOCK
);

-- Verify first 10 rows
SELECT TOP 10 * FROM dbo.end_inventory;