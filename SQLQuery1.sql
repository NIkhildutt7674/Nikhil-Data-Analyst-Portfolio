USE SalesDB;
GO




/*==========================================================
 Task 2: Exploratory Data Analysis (EDA) & Business Intelligence
 Database : SalesDB
 Table    : sales_data_cleaned
==========================================================*/

------------------------------------------------------------
-- 1. Display the first 10 records
------------------------------------------------------------
SELECT TOP 10 *
FROM sales_data_cleaned;
GO

------------------------------------------------------------
-- 2. Count total number of records
------------------------------------------------------------
SELECT COUNT(*) AS Total_Records
FROM sales_data_cleaned;
GO

------------------------------------------------------------
-- 3. Calculate Total Sales
------------------------------------------------------------
SELECT SUM(Total_Sales) AS Total_Sales
FROM sales_data_cleaned;
GO

------------------------------------------------------------
-- 4. Calculate Average Selling Price
------------------------------------------------------------
SELECT AVG(Avg_Selling_Price) AS Average_Selling_Price
FROM sales_data_cleaned;
GO

------------------------------------------------------------
-- 5. Find Minimum and Maximum Sales
------------------------------------------------------------
SELECT
    MIN(Total_Sales) AS Minimum_Sales,
    MAX(Total_Sales) AS Maximum_Sales
FROM sales_data_cleaned;
GO

------------------------------------------------------------
-- 6. Top 10 Products by Revenue
------------------------------------------------------------
SELECT
    Product,
    SUM(Total_Sales) AS Revenue
FROM sales_data_cleaned
GROUP BY Product
ORDER BY Revenue DESC;
GO

------------------------------------------------------------
-- 7. Sales by Category
------------------------------------------------------------
SELECT
    Category,
    SUM(Total_Sales) AS Total_Sales
FROM sales_data_cleaned
GROUP BY Category
ORDER BY Total_Sales DESC;
GO

------------------------------------------------------------
-- 8. Sales by City
------------------------------------------------------------
SELECT
    City,
    SUM(Total_Sales) AS Total_Sales
FROM sales_data_cleaned
GROUP BY City
ORDER BY Total_Sales DESC;
GO

------------------------------------------------------------
-- 9. Monthly Sales Trend
------------------------------------------------------------
SELECT
    Month,
    SUM(Total_Sales) AS Monthly_Sales
FROM sales_data_cleaned
GROUP BY Month
ORDER BY Month;
GO

------------------------------------------------------------
-- 10. Quarterly Sales Analysis
------------------------------------------------------------
SELECT
    Quarter,
    SUM(Total_Sales) AS Quarterly_Sales
FROM sales_data_cleaned
GROUP BY Quarter
ORDER BY Quarter;
GO

------------------------------------------------------------
-- 11. Top 5 Customers by Revenue
------------------------------------------------------------
SELECT TOP 5
    Customer_Name,
    SUM(Total_Sales) AS Total_Spent
FROM sales_data_cleaned
GROUP BY Customer_Name
ORDER BY Total_Spent DESC;
GO

------------------------------------------------------------
-- 12. Product-wise Quantity Sold
------------------------------------------------------------
SELECT
    Product,
    SUM(Quantity) AS Quantity_Sold
FROM sales_data_cleaned
GROUP BY Product
ORDER BY Quantity_Sold DESC;
GO

------------------------------------------------------------
-- 13. Gender-wise Customer Count
------------------------------------------------------------
SELECT
    Gender,
    COUNT(*) AS Customer_Count
FROM sales_data_cleaned
GROUP BY Gender;
GO

------------------------------------------------------------
-- 14. Customer Distribution by Age Group
------------------------------------------------------------
SELECT
    Age_Group,
    COUNT(*) AS Total_Customers
FROM sales_data_cleaned
GROUP BY Age_Group;
GO

------------------------------------------------------------
-- 15. Count High Value Customers
------------------------------------------------------------
SELECT
    COUNT(*) AS High_Value_Customers
FROM sales_data_cleaned
WHERE High_Value_Customer = 1;
GO

------------------------------------------------------------
-- 16. Average Customer Age
------------------------------------------------------------
SELECT
    AVG(Age) AS Average_Customer_Age
FROM sales_data_cleaned;
GO

------------------------------------------------------------
-- 17. Sales by Day of Week
------------------------------------------------------------
SELECT
    Day_Name,
    SUM(Total_Sales) AS Total_Sales
FROM sales_data_cleaned
GROUP BY Day_Name
ORDER BY Total_Sales DESC;
GO

------------------------------------------------------------
-- 18. Average Sales by Category
------------------------------------------------------------
SELECT
    Category,
    AVG(Total_Sales) AS Average_Sales
FROM sales_data_cleaned
GROUP BY Category
ORDER BY Average_Sales DESC;
GO

------------------------------------------------------------
-- 19. Customers Older Than 40 Years
------------------------------------------------------------
SELECT
    Customer_Name,
    Age,
    City,
    Total_Sales
FROM sales_data_cleaned
WHERE Age > 40;
GO

------------------------------------------------------------
-- 20. Customers with Sales Above Average
------------------------------------------------------------
SELECT
    Customer_Name,
    Product,
    Total_Sales
FROM sales_data_cleaned
WHERE Total_Sales >
(
    SELECT AVG(Total_Sales)
    FROM sales_data_cleaned
);
GO

------------------------------------------------------------
-- 21. Top 5 Cities by Number of Customers
------------------------------------------------------------
SELECT TOP 5
    City,
    COUNT(Customer_ID) AS Total_Customers
FROM sales_data_cleaned
GROUP BY City
ORDER BY Total_Customers DESC;
GO

------------------------------------------------------------
-- 22. Average Unit Price by Product
------------------------------------------------------------
SELECT
    Product,
    AVG(Unit_Price) AS Average_Unit_Price
FROM sales_data_cleaned
GROUP BY Product
ORDER BY Average_Unit_Price DESC;
GO

------------------------------------------------------------
-- 23. Category-wise Average Quantity Sold
------------------------------------------------------------
SELECT
    Category,
    AVG(Quantity) AS Average_Quantity
FROM sales_data_cleaned
GROUP BY Category;
GO

------------------------------------------------------------
-- 24. Number of Orders by Category
------------------------------------------------------------
SELECT
    Category,
    COUNT(Order_ID) AS Total_Orders
FROM sales_data_cleaned
GROUP BY Category
ORDER BY Total_Orders DESC;
GO

------------------------------------------------------------
-- 25. Customer-wise Total Spending
------------------------------------------------------------
SELECT
    Customer_Name,
    SUM(Total_Sales) AS Total_Spending
FROM sales_data_cleaned
GROUP BY Customer_Name
ORDER BY Total_Spending DESC;
GO

/*==========================================================
                END OF SQL SCRIPT
==========================================================*/