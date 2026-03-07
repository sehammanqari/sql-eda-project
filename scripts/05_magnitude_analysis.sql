-- ====================================================
-- MAGNITUDE ANALYSIS
-- Comparing contributions across different groups
-- ====================================================

/*
Magnitude analysis evaluates the size or contribution
of different groups within the dataset. This helps identify
which segments generate the most revenue or activity.
*/


-- ====================================================
-- SALES BY COUNTRY
-- ====================================================

-- Which countries generate the highest sales?
SELECT
    country,
    SUM(sales_amount) AS total_sales
FROM gold.fact_sales fs
LEFT JOIN gold.dim_customers dc
    ON fs.customer_key = dc.customer_key
GROUP BY country
ORDER BY total_sales DESC;


-- ====================================================
-- SALES BY GENDER
-- ====================================================

-- Which gender contributes the most sales?
SELECT
    gender,
    SUM(sales_amount) AS total_sales
FROM gold.fact_sales fs
LEFT JOIN gold.dim_customers dc
    ON fs.customer_key = dc.customer_key
GROUP BY gender
ORDER BY total_sales DESC;


-- ====================================================
-- SALES BY MARITAL STATUS
-- ====================================================

-- Which marital status group generates the most sales?
SELECT
    marital_status,
    SUM(sales_amount) AS total_sales
FROM gold.fact_sales fs
LEFT JOIN gold.dim_customers dc
    ON fs.customer_key = dc.customer_key
GROUP BY marital_status
ORDER BY total_sales DESC;


-- ====================================================
-- SALES BY PRODUCT CATEGORY
-- ====================================================

-- Which product categories generate the most sales?
SELECT
    category,
    SUM(sales_amount) AS total_sales
FROM gold.fact_sales fs
LEFT JOIN gold.dim_products dp
    ON fs.product_key = dp.product_key
GROUP BY category
ORDER BY total_sales DESC;


-- ====================================================
-- SALES BY PRODUCT SUBCATEGORY
-- ====================================================

-- Which subcategories generate the most sales?
SELECT
    subcategory,
    SUM(sales_amount) AS total_sales
FROM gold.fact_sales fs
LEFT JOIN gold.dim_products dp
    ON fs.product_key = dp.product_key
GROUP BY subcategory
ORDER BY total_sales DESC;


-- ====================================================
-- SALES BY PRODUCT LINE
-- ====================================================

-- Which product lines generate the most sales?
SELECT
    product_line,
    SUM(sales_amount) AS total_sales
FROM gold.fact_sales fs
LEFT JOIN gold.dim_products dp
    ON fs.product_key = dp.product_key
GROUP BY product_line
ORDER BY total_sales DESC;
