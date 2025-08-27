SELECT 
  VendorNo, 
  Brand, 
  SUM(SalesDollars) AS TotalSalesDollars, 
  SUM(SalesPrice) AS TotalSalesPrice, 
  SUM(SalesQuantity) AS TotalSalesQuantity, 
  SUM(ExciseTax) AS TotalExciseTax 
FROM 
  vendor_db.sales 
GROUP BY 
  VendorNo, 
  Brand
ORDER BY
	TotalSalesDollars ASC;
