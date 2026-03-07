-- ====================================================
-- DIMENSION EXPLORATION
-- Exploring categorical attributes within the dataset
-- ====================================================

/*
Dimension exploration focuses on understanding categorical
variables within the dataset. These attributes describe
entities such as customers and products and help identify
the distinct groups that exist in the data.
*/


-- ====================================================
-- CUSTOMER DIMENSIONS
-- ====================================================

-- 1. What countries do customers come from?
SELECT DISTINCT country
FROM gold.dim_customers
ORDER BY country;


-- 2. What gender values exist in the customer data?
SELECT DISTINCT gender
FROM gold.dim_customers
ORDER BY gender;


-- 3. What marital status values exist?
SELECT DISTINCT marital_status
FROM gold.dim_customers
ORDER BY marital_status;


-- ====================================================
-- PRODUCT DIMENSIONS
-- ====================================================

-- 4. What product categories and subcategories exist?
SELECT DISTINCT category, subcategory
FROM gold.dim_products
ORDER BY category, subcategory;


-- 5. What product lines exist?
SELECT DISTINCT product_line
FROM gold.dim_products
ORDER BY product_line;
