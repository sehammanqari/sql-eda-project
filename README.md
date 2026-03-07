# SQL Exploratory Data Analysis (EDA) Project

## Project Overview

This project demonstrates how **SQL can be used to perform Exploratory Data Analysis (EDA)** on a structured dataset. The objective is to explore the dataset, understand its structure, identify patterns, and generate meaningful insights using SQL queries.

The dataset analyzed in this project originates from the **Gold Layer of a Data Warehouse**, where the data has already been cleaned, transformed, and organized into an analytical model. This allows the analysis to focus on discovering insights and understanding business performance.

The analysis follows a **structured EDA methodology** consisting of multiple stages designed to progressively explore and understand the data.

---

# Project Context

This project builds upon the dataset generated in my **SQL Data Warehouse Project**.

In that project, I designed and implemented a modern data warehouse using a **Medallion Architecture (Bronze → Silver → Gold)** to ingest, clean, and model the data.

The **Gold Layer** of the warehouse provides the analytical dataset used in this repository for exploratory analysis.

You can view the full Data Warehouse project here:

**SQL Data Warehouse Project**
[https://github.com/sehammanqari/sql-data-warehouse-project](https://github.com/sehammanqari/sql-data-warehouse-project)

---

# Data Pipeline Context

The relationship between the two projects can be illustrated as follows:

```text
Raw Source Data
        ↓
Data Warehouse Project
(Bronze → Silver → Gold)
        ↓
Gold Layer Analytical Tables
        ↓
Exploratory Data Analysis (This Project)
```

The EDA project focuses on analyzing the **final analytical dataset** produced by the data warehouse.

---

# EDA Methodology

This project follows a structured **Exploratory Data Analysis methodology** consisting of six main steps.

## 1. Database Exploration

Understanding the overall structure of the dataset.

Tasks include:

* identifying available tables
* reviewing columns and data types
* counting records in each table
* identifying keys and relationships

---

## 2. Dimension Exploration

Analyzing categorical attributes to understand how entities are distributed within the dataset.

Examples explored:

* customer countries
* gender distribution
* marital status
* product categories
* product subcategories
* product lines

---

## 3. Date Exploration

Analyzing time-related attributes to identify patterns and trends over time.

Examples include:

* earliest and latest order dates
* number of years in the dataset
* orders per year
* orders per month
* monthly sales trends
* shipping and delivery timing

---

## 4. Measures Exploration

Analyzing numerical metrics to understand business scale and performance.

Examples include:

* total sales
* total quantity sold
* average product price
* number of orders
* number of customers
* number of products

A summary report of key business metrics is generated using SQL aggregation queries.

---

## 5. Magnitude Analysis

Comparing the size or contribution of different groups in the dataset.

Examples include:

* sales by country
* sales by gender
* sales by marital status
* sales by product category
* sales by product line

This step helps identify the segments that contribute most to business performance.

---

## 6. Ranking Analysis

Identifying the top and lowest performing entities.

Examples include:

* top customers by revenue
* best-selling products
* highest quantity products
* lowest-performing products
* top-performing countries

Ranking analysis highlights key drivers of business results.

---

# Dataset

The dataset used in this project is derived from the **Gold Layer of the SQL Data Warehouse Project**.

The analytical model consists of three tables:

| Table           | Description                                                                   |
| --------------- | ----------------------------------------------------------------------------- |
| `dim_customers` | Customer information including demographics and location                      |
| `dim_products`  | Product details including category, subcategory, and product line             |
| `fact_sales`    | Transactional sales data including order dates, quantities, and sales amounts |

For the purpose of this EDA project, these tables were exported from SQL Server and provided as CSV files.

---

# Project Structure

```
sql-eda-project
│
├── datasets
│   ├── gold_dim_customers.csv
│   ├── gold_dim_products.csv
│   └── gold_fact_sales.csv
│
├── scripts
│   ├── 01_database_exploration.sql
│   ├── 02_dimension_exploration.sql
│   ├── 03_date_exploration.sql
│   ├── 04_measures_exploration.sql
│   ├── 05_magnitude_analysis.sql
│   └── 06_ranking_analysis.sql
│
├── docs
│   └── eda_methodology.md
│
└── README.md
```

---

# Tools & Technologies

This project was built using:

* **Microsoft SQL Server**
* **SQL Server Management Studio (SSMS)**
* **T-SQL**
* **Git & GitHub**

---

# Key Skills

This project demonstrates practical skills in:

* Exploratory Data Analysis with SQL
* Data aggregation and summarization
* Data exploration and pattern detection
* Business metric analysis
* Ranking and performance analysis
* Structured analytical workflows

---

# About Me

Hi, I’m **Seham Hafez Manqari**, a Data Science student focused on developing strong foundations in **SQL, data analytics, and data engineering concepts**.

This project represents part of my journey toward becoming a professional **Data Analyst**, where I focus on building practical projects that demonstrate real-world data skills.

Email: [sehammanqari@gmail.com](mailto:sehammanqari@gmail.com)

