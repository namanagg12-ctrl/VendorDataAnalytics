SELECT 
  Brand, 
  SUM(SalesDollars) AS TotalSales, 
  SUM(SalesPrice) AS AvgPrice, 
  SUM(SalesQuantity) AS TotalQuantity 
FROM 
  vendor_db.sales 
GROUP BY 
  Brand;