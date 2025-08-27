 SELECT * 
 FROM vendor_db.vendor_sales_summary
 WHERE 
	TotalSalesQuantity > 0 AND GrossProfit > 0 AND ProfitMargin > 0
 ;
 