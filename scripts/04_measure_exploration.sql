-- ====================================================
-- MEASURES EXPLORATION
-- Exploring numerical metrics in the dataset
-- ====================================================

/*
Measures exploration focuses on analyzing numerical values
such as sales, quantity, price, and counts of entities.
These metrics provide an overview of the scale and
performance of the business.
*/


-- ====================================================
-- SALES METRICS
-- ====================================================

-- 1. Total sales amount
SELECT SUM(sales_amount) AS total_sales
FROM gold.fact_sales;


-- 2. Total quantity of items sold
SELECT SUM(quantity) AS total_quantity
FROM gold.fact_sales;


-- 3. Average selling price
SELECT AVG(price) AS avg_price
FROM gold.fact_sales;


-- ====================================================
-- ORDER METRICS
-- ====================================================

-- 4. Total number of orders
SELECT COUNT(DISTINCT order_number) AS total_orders
FROM gold.fact_sales;


-- ====================================================
-- PRODUCT METRICS
-- ====================================================

-- 5. Total number of products
SELECT COUNT(DISTINCT product_name) AS total_products
FROM gold.dim_products;


-- ====================================================
-- CUSTOMER METRICS
-- ====================================================

-- 6. Total number of customers
SELECT COUNT(customer_key) AS total_customers
FROM gold.dim_customers;


-- 7. Number of customers who placed orders
SELECT COUNT(DISTINCT customer_key) AS customers_with_orders
FROM gold.fact_sales;


-- ====================================================
-- BUSINESS SUMMARY REPORT
-- Key metrics overview
-- ====================================================

SELECT 'Total Sales' AS measure_name, SUM(sales_amount) AS measure_value
FROM gold.fact_sales

UNION ALL

SELECT 'Total Quantity', SUM(quantity)
FROM gold.fact_sales

UNION ALL

SELECT 'Average Price', AVG(price)
FROM gold.fact_sales

UNION ALL

SELECT 'Total Orders', COUNT(DISTINCT order_number)
FROM gold.fact_sales

UNION ALL

SELECT 'Total Products', COUNT(product_name)
FROM gold.dim_products

UNION ALL

SELECT 'Total Customers', COUNT(customer_key)
FROM gold.dim_customers;
