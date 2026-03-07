```sql
-- ====================================================
-- DATABASE EXPLORATION
-- Understanding the structure of the Gold Layer
-- ====================================================

-- 1. What tables are available in the dataset?
SELECT 
    TABLE_SCHEMA,
    TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'gold';


-- 2. What columns exist in each table and what is the data type of each column?
SELECT 
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'gold'
ORDER BY TABLE_NAME, ORDINAL_POSITION;


-- 3. How many records are there in each table?
SELECT 'dim_customers' AS table_name, COUNT(*) AS total_records
FROM gold.dim_customers

UNION ALL

SELECT 'dim_products' AS table_name, COUNT(*) AS total_records
FROM gold.dim_products

UNION ALL

SELECT 'fact_sales' AS table_name, COUNT(*) AS total_records
FROM gold.fact_sales;


-- 4. What are the primary business entities represented in the dataset?
-- Business entities identified in the Gold Layer:
-- 1) Customers
-- 2) Products
-- 3) Sales Transactions


-- 5. Which columns could be used to join the tables together?
-- Join relationships in the Gold Layer:
-- fact_sales.customer_key = dim_customers.customer_key
-- fact_sales.product_key  = dim_products.product_key

SELECT *
FROM gold.fact_sales;


-- 6. Are there any columns that look like keys or identifiers?
SELECT 
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'gold'
  AND COLUMN_NAME LIKE '%key%'
ORDER BY TABLE_NAME, COLUMN_NAME;


-- 7. Which columns appear to contain dates?
SELECT 
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'gold'
  AND DATA_TYPE = 'date'
ORDER BY TABLE_NAME, COLUMN_NAME;


-- 8. Which columns appear to contain numerical measures?
SELECT 
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'gold'
  AND DATA_TYPE IN ('int', 'decimal', 'numeric', 'float')
ORDER BY TABLE_NAME, COLUMN_NAME;


-- 9. Preview the data in each table
SELECT TOP 10 *
FROM gold.dim_customers;

SELECT TOP 10 *
FROM gold.dim_products;

SELECT TOP 10 *
FROM gold.fact_sales;
```

