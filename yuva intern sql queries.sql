DESCRIBE primeor_cleaned_dataset;
SHOW COLUMNS FROM primeor_cleaned_dataset;
SELECT product_name,
       SUM(profit) AS total_profit
FROM primeor_cleaned_dataset
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;
SELECT customer_name,
       SUM(sales) AS total_sales
FROM primeor_cleaned_dataset
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;
SELECT customer_name,
       SUM(sales) AS total_sales
FROM primeor_cleaned_dataset
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;
SELECT region,
       SUM(sales) AS total_sales
FROM primeor_cleaned_dataset
GROUP BY region;
SELECT category,
       AVG(profit) AS average_profit
FROM primeor_cleaned_dataset
GROUP BY category;
SELECT category,
       AVG(discount) AS average_discount
FROM primeor_cleaned_dataset
GROUP BY category
ORDER BY average_discount DESC;
SELECT order_id,
       customer_name,
       product_name,
       profit
FROM primeor_cleaned_dataset
WHERE profit < 0;
SELECT
MONTHNAME(order_date) AS month,
SUM(sales) AS total_sales
FROM primeor_cleaned_dataset
GROUP BY MONTH(order_date), MONTHNAME(order_date)
ORDER BY MONTH(order_date);
SELECT market,
       SUM(sales) AS revenue
FROM primeor_cleaned_dataset
GROUP BY market;
SELECT sub_category,
       SUM(sales) AS total_sales
FROM primeor_cleaned_dataset
GROUP BY sub_category
ORDER BY total_sales DESC
LIMIT 10;
SELECT ship_mode,
       COUNT(*) AS total_orders
FROM primeor_cleaned_dataset
GROUP BY ship_mode;
SELECT region
FROM primeor_cleaned_dataset
WHERE order_id='TEST-10001';
DESCRIBE primeor_cleaned_dataset;
SELECT
    Market,
    ROUND(SUM(Sales),2) AS Total_Revenue
FROM primeor_cleaned_dataset
GROUP BY Market
ORDER BY Total_Revenue DESC;
SELECT
    Region,
    ROUND(SUM(Sales),2) AS Total_Revenue
FROM primeor_cleaned_dataset
GROUP BY Region
ORDER BY Total_Revenue DESC;
SELECT
    Category,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM primeor_cleaned_dataset
GROUP BY Category
ORDER BY Total_Profit ASC;
SELECT
    Sub_Category,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM primeor_cleaned_dataset
GROUP BY Sub_Category
ORDER BY Total_Profit ASC
LIMIT 5;
SELECT
    Ship_Mode,
    COUNT(*) AS Total_Orders
FROM primeor_cleaned_dataset
GROUP BY Ship_Mode
ORDER BY Total_Orders DESC;
SELECT
    Segment,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM primeor_cleaned_dataset
GROUP BY Segment
ORDER BY Total_Sales DESC;
SELECT
    Customer_Name,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM primeor_cleaned_dataset
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT
    Product_Name,
    SUM(Quantity) AS Total_Quantity
FROM primeor_cleaned_dataset
GROUP BY Product_Name
ORDER BY Total_Quantity DESC
LIMIT 10;
SELECT
    Product_Name,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM primeor_cleaned_dataset
GROUP BY Product_Name
ORDER BY Total_Profit DESC
LIMIT 10;
SELECT
    Product_Name,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM primeor_cleaned_dataset
GROUP BY Product_Name
ORDER BY Total_Profit ASC
LIMIT 10;
SELECT
    Category,
    ROUND(AVG(Discount),2) AS Avg_Discount
FROM primeor_cleaned_dataset
GROUP BY Category;
SELECT
    MONTH(Order_Date) AS Month_No,
    MONTHNAME(Order_Date) AS Month_Name,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM primeor_cleaned_dataset
GROUP BY MONTH(Order_Date), MONTHNAME(Order_Date)
ORDER BY Month_No;
