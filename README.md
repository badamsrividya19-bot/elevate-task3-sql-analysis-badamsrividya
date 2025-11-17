Task 3 – SQL for Data Analysis

Author: Badam Sri Vidya
Batch: B.Tech – CSE (Data Science), 4th Year
Internship: Elevate Internship Program – Task 3 Submission
University: Malla Reddy Institute of Engineering & Technology

1. Project Introduction

This repository contains all SQL tasks performed for Task 3 of the Elevate Internship.
The analysis is executed on the ecommerce.db SQLite database and includes advanced SQL concepts such as:

Filtering

Aggregations

Grouping & ordering

JOIN operations

Views

Window functions

Handling NULLs

Exporting query results

All output files are stored in the results folder.

2. Files Included in Repository
Main Files

ecommerce.db
Main SQLite database used for performing SQL queries.

task3_queries.sql
Contains all SQL queries written for Task 3.

README.md
Documentation explaining the structure and purpose of the repository.

3. Output Files (results/ folder)

Each CSV file is generated as output for a specific SQL query.

arpu.csv — Average Revenue Per User

categories_avg_price_gt200.csv — Categories with average price above 200

create_view.csv — Generated from created SQL view

customers_above_average.csv — Customers with above-average spending

customers_ordered_laptop.csv — Customers who bought a laptop

email_nulls.csv — NULL email records

products_sales_leftjoin.csv — Product-level sales using LEFT JOIN

query_view.csv — Query results from SQL view

select_india_customers.csv — Customers located in India

total_sales_per_customer.csv — Total customer spending

4. Query Explanations (Easy to Explain in Interview)

Below is a simple explanation of every SQL query used.

4.1 ARPU (Average Revenue Per User)

Purpose: To calculate average spending per user.
Concepts Used: SUM, COUNT, DISTINCT.

4.2 Categories With Average Price > 200

Purpose: To identify premium categories.
Concepts Used: GROUP BY, HAVING, AVG.

4.3 Select Customers From India

Purpose: To filter customers based on country.
Concepts Used: WHERE clause, ORDER BY.

4.4 Total Sales Per Customer

Purpose: To calculate total spending and number of orders per customer.
Concepts Used: JOIN, GROUP BY, SUM, COUNT.

4.5 Left Join on Product Sales

Purpose: To list all products even if they have zero sales.
Concepts Used: LEFT JOIN, COALESCE.

4.6 Identify NULL Emails

Purpose: To detect missing customer emails.
Concepts Used: COALESCE for default values.

4.7 Customers Who Purchased Laptop

Purpose: To filter customers by specific product.
Concepts Used: EXISTS, subqueries, JOIN.

4.8 Create SQL View (customer_spend_view)

Purpose: To create a reusable customer spending summary.
Concepts Used: SQL VIEW.

4.9 Customers Above Average Spending

Purpose: To identify top-performing customers.
Concepts Used: Subqueries, AVG, GROUP BY.

4.10 Querying The View

Purpose: To reuse a created view for easier analysis.
Concepts Used: View usage, ORDER BY.

5. Summary

This project demonstrates proficiency in:

SQL fundamentals

Analytical SQL

Joins, filtering, grouping, ordering

Database design and view creation

Exporting data for business analysis

All results are organized in the results/ folder for easy evaluation.

6. Status

Task 3 Completed Successfully ✔
Ready for submission and evaluation.
