SELECT 
  Brand,
  PurchasePrice, 
  SUM(Quantity), 
  SUM(Dollars) 
FROM 
  vendor_db.purchases
GROUP BY 
  Brand, 
  PurchasePrice;