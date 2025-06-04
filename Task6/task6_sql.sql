USE elevatelabs;

SELECT * FROM sales_data;

SELECT
	ROUND(SUM(TotalRevenue),2) as Revenue
FROM sales_data;

SELECT 
     ROUND(SUM(TotalRevenue),2) AS totalRevenue,
      COUNT(DISTINCT TransactionID) AS order_volume,
     PaymentMethod
	
FROM sales_data
GROUP BY PaymentMethod
ORDER BY order_volume;



SELECT 
    EXTRACT(YEAR FROM Date) AS year,
    EXTRACT(MONTH FROM Date) AS month,
    SUM(TotalRevenue) AS monthly_revenue,
    COUNT(DISTINCT TransactionID) AS order_volume
FROM 
    sales_data
WHERE 
    Region = 'North America'
GROUP BY 
    EXTRACT(YEAR FROM Date),
    EXTRACT(MONTH FROM Date)
ORDER BY 
    year, month;



SELECT 
    EXTRACT(YEAR FROM Date) AS year,
    EXTRACT(MONTH FROM Date) AS month,
    SUM(TotalRevenue) AS monthly_revenue,
    COUNT(DISTINCT TransactionID) AS order_volume
FROM 
    sales_data
WHERE 
    Region = 'North America'
    AND ProductCategory= 'Electronics'
GROUP BY 
    EXTRACT(YEAR FROM Date),
    EXTRACT(MONTH FROM Date)
ORDER BY 
    year, month;
