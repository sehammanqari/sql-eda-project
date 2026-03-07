-- ====================================================
-- RANKING ANALYSIS
-- Identifying top and bottom performers
-- ====================================================

/*
Ranking analysis identifies the highest and lowest
performing entities within the dataset. This includes
customers, products, and categories.
*/


-- ====================================================
-- TOP CUSTOMERS BY SALES
-- ====================================================

SELECT TOP 10
    customer_id,
    first_name,
    last_name,
    SUM(sales_amount) AS total_sales
FROM gold.fact_sales fs
LEFT JOIN gold.dim_customers dc
    ON fs.customer_key = dc.customer_key
GROUP BY customer_id, first_name, last_name
ORDER BY total_sales DESC;


-- ====================================================
-- TOP PRODUCTS BY SALES
-- ====================================================

SELECT TOP 10
    product_name,
    SUM(sales_amount) AS total_sales
FROM gold.fact_sales fs
LEFT JOIN gold.dim_products dp
    ON fs.product_key = dp.product_key
GROUP BY product_name
ORDER BY total_sales DESC;


-- ====================================================
-- TOP PRODUCTS BY QUANTITY SOLD
-- ====================================================

SELECT TOP 10
    product_name,
    SUM(quantity) AS total_quantity_sold
FROM gold.fact_sales fs
LEFT JOIN gold.dim_products dp
    ON fs.product_key = dp.product_key
GROUP BY product_name
ORDER BY total_quantity_sold DESC;


-- ====================================================
-- LOWEST PERFORMING PRODUCTS
-- ====================================================

SELECT TOP 10
    product_name,
    SUM(sales_amount) AS total_sales
FROM gold.fact_sales fs
LEFT JOIN gold.dim_products dp
    ON fs.product_key = dp.product_key
GROUP BY product_name
ORDER BY total_sales ASC;


-- ====================================================
-- TOP COUNTRIES BY SALES
-- ====================================================

SELECT TOP 10
    country,
    SUM(sales_amount) AS total_sales
FROM gold.fact_sales fs
LEFT JOIN gold.dim_customers dc
    ON fs.customer_key = dc.customer_key
GROUP BY country
ORDER BY total_sales DESC;
