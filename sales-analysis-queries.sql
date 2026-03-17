SET SQL_SAFE_UPDATES = 0;
UPDATE sales_data
SET `Revenue Column` = Quantity*`Selling Price`;
UPDATE sales_data
SET `Total Cost`= Quantity *`Cost Per Unit`;
UPDATE sales_data
SET Profit = `Revenue Column` - `Total Cost`;
SELECT Product,Quantity,`Revenue Column`,`Total Cost`,Profit
FROM sales_data
LIMIT 10;
SELECT SUM(`Revenue Column`)AS total_revenue,
SUM(`Total Cost`) AS total_cost,
SUM(Profit) AS total_profit
FROM sales_data
SELECT 
PRODUCT,
SUM(`Revenue Column`) AS Total_Revenue
FROM sales_data
GROUP BY Product
ORDER BY Total_Revenue DESC;
SELECT PRODUCT,
SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY PRODUCT
ORDER BY Total_Profit DESC;
SELECT PRODUCT,
SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY PRODUCT
ORDER BY Total_Profit DESC;
SELECT 
PRODUCT,
ROUND(SUM(Profit)/SUM(`Revenue Column`) * 100,2) AS Profit_Margin
FROM sales_data
GROUP BY PRODUCT
ORDER BY Profit_Margin DESC;
SELECT 
PRODUCT,
SUM(Quantity) AS Total_Units_Sold
FROM sales_data
GROUP BY PRODUCT
ORDER BY Total_Units_Sold DESC;
SELECT 
MONTH('ï»¿Date') AS Month,
SUM(`Revenue Column`) AS Revenue
FROM sales_data
GROUP BY Month
ORDER BY Month;
SHOW COLUMNS IN sales_data
DESCRIBE sales_data ;
ALTER TABLE sales_data
CHANGE `ï»¿Date`Date TEXT;
DESCRIBE sales_data
UPDATE sales_data
SET Date = STR_TO_DATE(Date, '%d-%m-%Y');
DESCRIBE sales_data
SELECT 
MONTH(Date) AS Month,
SUM(`Revenue Column`) AS Revenue
FROM sales_data
GROUP BY Month
ORDER BY Month;
SELECT 
MONTH(Date) AS Month,
SUM(Profit) AS Profit
FROM sales_data
GROUP BY Month
ORDER BY Month
