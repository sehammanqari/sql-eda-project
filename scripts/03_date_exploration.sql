-- ====================================================
-- DATE EXPLORATION
-- Exploring time patterns in the dataset
-- ====================================================

/*
Date exploration focuses on analyzing time-related attributes
to identify trends, activity patterns, and business behavior
over time.
*/


-- 1. What is the earliest order date in the dataset?
SELECT MIN(order_date) AS earliest_order_date
FROM gold.fact_sales;


-- 2. What is the latest order date in the dataset?
SELECT MAX(order_date) AS latest_order_date
FROM gold.fact_sales;


-- 3. How many years of data are available?
SELECT COUNT(DISTINCT YEAR(order_date)) AS available_years
FROM gold.fact_sales;


-- 4. How many orders were placed each year?
SELECT 
    YEAR(order_date) AS year_,
    COUNT(*) AS total_orders
FROM gold.fact_sales
GROUP BY YEAR(order_date)
ORDER BY YEAR(order_date);


-- 5. How many orders were placed each month?
SELECT 
    YEAR(order_date) AS year_,
    MONTH(order_date) AS month_,
    COUNT(*) AS total_orders
FROM gold.fact_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY YEAR(order_date), MONTH(order_date);


-- 6. What is the monthly sales trend over time?
SELECT 
    YEAR(order_date) AS year_,
    MONTH(order_date) AS month_,
    SUM(sales_amount) AS monthly_sales
FROM gold.fact_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY YEAR(order_date), MONTH(order_date);


-- 7. Which year had the highest sales?
SELECT 
    YEAR(order_date) AS year_,
    SUM(sales_amount) AS total_sales
FROM gold.fact_sales
GROUP BY YEAR(order_date)
ORDER BY total_sales DESC;


-- 8. Which month had the highest sales?
SELECT 
    MONTH(order_date) AS month_,
    SUM(sales_amount) AS total_sales
FROM gold.fact_sales
GROUP BY MONTH(order_date)
ORDER BY total_sales DESC;


-- 9. Are there any periods with unusually low or high order activity?
SELECT 
    YEAR(order_date) AS year_,
    MONTH(order_date) AS month_,
    COUNT(*) AS total_orders
FROM gold.fact_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY total_orders DESC;


-- 10. How many orders were shipped late compared to the order date?
SELECT 
    COUNT(*) AS shipped_after_order_date
FROM gold.fact_sales
WHERE shipping_date > order_date;


-- 11. What is the average time between order date and shipping date?
SELECT 
    AVG(DATEDIFF(DAY, order_date, shipping_date)) AS avg_days_to_ship
FROM gold.fact_sales;


-- 12. What is the average time between order date and due date?
SELECT 
    AVG(DATEDIFF(DAY, order_date, due_date)) AS avg_days_to_due
FROM gold.fact_sales;
