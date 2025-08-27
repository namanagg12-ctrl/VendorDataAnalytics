SELECT 
  pp.VendorNumber, 
  pp.Brand, 
  pp.Price AS ActualPrice, 
  pp.PurchasePrice, 
  SUM(s.SalesQuantity) AS TotalSalesQuantity, 
  SUM(s.SalesDollars) AS TotalSalesDollars, 
  AVG(s.SalesPrice) AS AvgSalesPrice, 
  SUM(s.ExciseTax) AS TotalExciseTax, 
  SUM(vi.Quantity) AS TotalPurchaseQuantity, 
  SUM(vi.Dollars) AS TotalPurchaseDollars, 
  SUM(vi.Freight) AS TotalFreightCost 
FROM 
  purchase_prices pp 
  JOIN sales s ON pp.VendorNumber = s.VendorNo 
  AND pp.Brand = s.Brand 
  JOIN vendor_invoice vi ON pp.VendorNumber = vi.VendorNumber 
GROUP BY 
  pp.VendorNumber, 
  pp.Brand, 
  pp.Price, 
  pp.PurchasePrice 
ORDER BY 
  TotalPurchaseDollars DESC;
