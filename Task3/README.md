**SQL Data Analysis - ElevateLabs E-commerce Dataset**

This repository contains SQL scripts for basic data analysis and manipulation on an e-commerce dataset, primarily demonstrating fundamental SQL concepts in MySQL.

**Project Description**

This project focuses on showcasing various SQL operations using a simulated e-commerce dataset. The task3.sql file provides examples of querying, filtering, aggregating, and structuring data, which are essential skills for database management and data analysis.

**task3.sql File Overview**

The task3.sql file is a collection of MySQL queries designed to interact with a table named info within the ElevateLabs database. It covers a range of common SQL tasks, from simple data selection to more complex operations like subqueries and view creation.

**Key Concepts Demonstrated**

The task3.sql script illustrates the following SQL functionalities:

**Data Selection and Filtering:**

SELECT: Retrieving data from the info table.

WHERE: Filtering records based on specific conditions (e.g., category="Sports", price>400).

**Data Ordering and Grouping:**

ORDER BY: Sorting results based on column values (Final_Price).

GROUP BY: Grouping rows that have the same values in specified columns, often used with aggregate functions (e.g., grouping by category to count transactions).

**Subqueries:**

Using nested SELECT statements to filter data based on the result of another query (e.g., finding User_ID and Category where Discount is greater than 20).

**Aggregate Functions:**

SUM(): Calculating the total sum of price and final_price.

AVG(): Calculating the average of price.

COUNT(): Counting the number of records based on conditions or groups.

Views:

CREATE VIEW: Creating a virtual table (useful_info) based on the result-set of a SQL query, simplifying access to frequently used data subsets.
