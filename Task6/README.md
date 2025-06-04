ONLINE SALES DATA ANALYSIS - TASK 6
===================================

Project Summary:
----------------
This project provides SQL-based analysis of an online sales dataset. It focuses on calculating revenue, order volumes, and understanding trends across payment methods, months, regions, and product categories.

Dataset Information:
--------------------
- TransactionID: Unique transaction identifier
- Date: Date of transaction
- ProductCategory: Product type/category
- ProductName: Specific product name
- UnitsSold: Number of units sold
- UnitPrice: Price per unit
- TotalRevenue: Revenue from the transaction
- Region: Geographic region of the sale
- PaymentMethod: Customer's payment method

Objectives:
-----------
1. Calculate total revenue.
2. Analyze revenue and order volume by payment method.
3. Generate monthly trends for revenue and orders.
4. Filter and analyze data by region (e.g., North America).
5. Filter and analyze data by both region and product category (e.g., Electronics in North America).

SQL Queries Summary:
--------------------
1. View all sales data:
   SELECT * FROM sales_data;

2. Total revenue:
   SELECT ROUND(SUM(TotalRevenue), 2) AS Revenue FROM sales_data;

3. Revenue and order volume by payment method:
   SELECT 
       ROUND(SUM(TotalRevenue), 2) AS totalRevenue,
       COUNT(DISTINCT TransactionID) AS order_volume,
       PaymentMethod
   FROM sales_data
   GROUP BY PaymentMethod
   ORDER BY order_volume;

4. Monthly revenue and order volume:
   SELECT 
       EXTRACT(YEAR FROM Date) AS year,
       EXTRACT(MONTH FROM Date) AS month,
       SUM(TotalRevenue) AS monthly_revenue,
       COUNT(DISTINCT TransactionID) AS order_volume
   FROM sales_data
   GROUP BY year, month
   ORDER BY year, month;

5. Monthly trends filtered by region:
   SELECT 
       EXTRACT(YEAR FROM Date) AS year,
       EXTRACT(MONTH FROM Date) AS month,
       SUM(TotalRevenue) AS monthly_revenue,
       COUNT(DISTINCT TransactionID) AS order_volume
   FROM sales_data
   WHERE Region = 'North America'
   GROUP BY year, month
   ORDER BY year, month;

6. Monthly trends filtered by region and product category:
   SELECT 
       EXTRACT(YEAR FROM Date) AS year,
       EXTRACT(MONTH FROM Date) AS month,
       SUM(TotalRevenue) AS monthly_revenue,
       COUNT(DISTINCT TransactionID) AS order_volume
   FROM sales_data
   WHERE Region = 'North America' AND ProductCategory = 'Electronics'
   GROUP BY year, month
   ORDER BY year, month;

Key Findings:
-------------
- Total Revenue: $73,568.85
- Credit Card is the most used payment method.
- January shows peak revenue and orders; revenue declines from May to August.
- North America is the highest-performing region.
- Electronics in North America consistently yield strong results.

Recommendations:
----------------
- Focus marketing efforts in North America and on Electronics.
- Encourage Credit Card payments with promotions.
- Increase engagement during lower-performing months (May–August).

