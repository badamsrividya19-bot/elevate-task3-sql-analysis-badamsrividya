Task 3 – SQL for Data Analysis

Author: Badam Sri Vidya
Batch: B.Tech – CSE (Data Science), 4th Year
Internship: Elevate Internship Program – Task 3
University: Malla Reddy Institute of Engineering & Technology

1. Project Introduction

This repository contains all SQL tasks performed for Task 3 of the Elevate Internship Program.
The work includes:

SQL filtering & sorting

Grouping & aggregation

JOIN operations

Creating and querying SQL views

Handling NULL values

Exporting results as CSV files

All query outputs are stored inside the results/ folder.

2. Repository Structure
📁 root
│
├── 📄 ecommerce.db              → Main SQLite database  
├── 📄 task3_queries.sql          → All SQL queries for Task 3  
├── 📄 README.md                  → Documentation  
│
└── 📁 results/                   → Output CSV files generated from each query
      ├── arpu.csv
      ├── categories_avg_price_gt200.csv
      ├── create_view.csv
      ├── customers_above_average.csv
      ├── customers_ordered_laptop.csv
      ├── email_nulls.csv
      ├── products_sales_leftjoin.csv
      ├── query_view.csv
      ├── select_india_customers.csv
      └── total_sales_per_customer.csv

3. SQL Task Explanations
3.1 ARPU (Average Revenue Per User)

Calculates the average spend per customer.

Uses: SUM(), COUNT(), DISTINCT.

3.2 Categories With Avg Price > 200

Identifies high-value product categories.

Uses: GROUP BY, HAVING, AVG().

3.3 Customers From India

Filters customers based on country.

Uses: WHERE.

3.4 Total Sales Per Customer

Computes total order amount for each user.

Uses: JOIN, SUM(), GROUP BY.

3.5 Product Sales – Left Join

Shows all products, even those with zero sales.

Uses: LEFT JOIN, COALESCE().

3.6 NULL Email Detection

Shows customers with missing email IDs.

Uses: IS NULL.

3.7 Customers Who Purchased Laptop

Identifies customers who ordered a laptop.

Uses: JOIN, WHERE.

3.8 Creating SQL View

Creates a reusable summary for customer spending.

Uses: CREATE VIEW.

3.9 Customers Above Average Spending

Compares spending against average customer spending.

Uses: subqueries + HAVING.

3.10 Querying the Created View

Uses the view to extract sorted customer spending.

Uses: ORDER BY.


4. Summary

This project demonstrates:

✔ Strong SQL fundamentals
✔ Analytical thinking
✔ Ability to work with a real-world database
✔ Structured data processing skills
✔ Clean result documentation
