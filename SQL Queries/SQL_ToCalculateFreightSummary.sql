SELECT 
  VendorNumber, 
  SUM(Freight) AS FreightCost
FROM 
  vendor_db.vendor_invoice 
GROUP BY 
  VendorNumber;
