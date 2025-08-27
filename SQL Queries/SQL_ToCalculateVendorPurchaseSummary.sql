SELECT 
    p.VendorNumber, 
    p.VendorName, 
    p.Brand, 
    p.PurchasePrice, 
    pp.Volume, 
    pp.Price AS ActualPrice, 
    SUM(p.Quantity) AS TotalPurchaseQuantity, 
    SUM(p.Dollars) AS TotalPurchaseDollars
FROM 
    purchases p
    JOIN purchase_prices pp ON p.Brand = pp.Brand
WHERE 
	p.PurchasePrice > 0 -- removes the items that were 0 priced
GROUP BY 
    p.VendorNumber, 
    p.VendorName, 
    p.Brand, 
    p.PurchasePrice, 
    pp.Volume, 
    pp.Price
ORDER BY 
    TotalPurchaseDollars DESC;