# Week 1 - SQL Window Functions and CTE Practice

## About This Repository

This repository contains my practice work on **SQL Window Functions** and **Common Table Expressions (CTEs)** using PostgreSQL.

The main purpose of this practice was to understand how advanced SQL queries work in real-world scenarios such as ranking employees, analyzing sales data, calculating running totals, and working with hierarchical data.

Instead of only writing basic queries, this practice focused more on analytical SQL concepts that are commonly used in reporting systems, dashboards, business analysis, and database applications.

All queries are written and organized topic-wise for better readability and easier understanding.

---

# Database Used

The practice is based on three tables:

* `employees`
* `customers`
* `orders`

These tables are connected using foreign key relationships and are used to perform different window function and CTE operations.

---

# Tables Overview

## Employees Table

The `employees` table stores employee-related information.

### Columns Included

| Column Name     | Description           |
| --------------- | --------------------- |
| `employee_id`   | Unique employee ID    |
| `employee_name` | Employee name         |
| `department`    | Department name       |
| `manager_id`    | Reporting manager ID  |
| `salary`        | Employee salary       |
| `hire_date`     | Employee joining date |

This table is mainly used for:

* Ranking operations
* Salary analysis
* Department-wise calculations
* Recursive hierarchy queries

---

## Customers Table

The `customers` table stores customer information.

### Columns Included

| Column Name     | Description        |
| --------------- | ------------------ |
| `customer_id`   | Unique customer ID |
| `customer_name` | Customer name      |
| `city`          | Customer city      |

This table is used for customer-based sales analysis and order tracking.

---

## Orders Table

The `orders` table stores order and sales information.

### Columns Included

| Column Name    | Description                 |
| -------------- | --------------------------- |
| `order_id`     | Unique order ID             |
| `customer_id`  | Customer reference          |
| `employee_id`  | Employee handling the order |
| `order_date`   | Date of order               |
| `total_amount` | Order amount                |

This table is mainly used for:

* Running totals
* Sales analysis
* LAG and LEAD functions
* Monthly trend analysis
* Customer spending calculations

---

# Topics Covered

## Window Functions

This practice includes different types of SQL window functions.

### Functions Practiced

* `ROW_NUMBER()`
* `RANK()`
* `DENSE_RANK()`
* `NTILE()`
* `LAG()`
* `LEAD()`
* `SUM() OVER()`
* `AVG() OVER()`
* `COUNT() OVER()`

### Concepts Covered

* Employee salary ranking
* Department-wise ranking
* Running totals
* Cumulative sales
* Moving averages
* Salary comparison
* Order trend analysis
* Quartile calculations

---

## PARTITION BY

Worked with `PARTITION BY` to perform calculations within groups.

### Examples

* Ranking employees department-wise
* Calculating department payroll
* Department average salary
* Customer-wise order tracking

This helped in understanding how window functions work independently inside grouped partitions.

---

## LAG and LEAD Functions

Practiced using previous and next row calculations.

### Examples

* Previous customer order amount
* Next customer order amount
* Difference between current and previous sales
* Monthly growth calculations

These functions are very useful in reporting and trend analysis.

---

## Running Totals and Moving Averages

Worked on analytical calculations such as:

* Running sales totals
* Cumulative employee sales
* Moving average of orders

These queries helped in understanding time-based data analysis.

---

# Common Table Expressions (CTEs)

This practice also focused heavily on CTEs.

### Concepts Practiced

* Basic CTEs
* Multiple CTEs
* Recursive CTEs
* Combining CTEs with window functions

### Examples

* Total sales per employee
* Customer spending analysis
* Employee hierarchy
* Recursive number generation
* Top-performing employees

---

# Recursive CTE Practice

Recursive CTEs were used to understand hierarchical and iterative queries.

### Implemented Examples

* Generating numbers from 1 to 10
* Displaying employee-manager hierarchy

This section helped in understanding recursive query execution in PostgreSQL.

---

# SQL Concepts Used

| Concept         | Purpose                            |
| --------------- | ---------------------------------- |
| `ROW_NUMBER()`  | Assign unique row numbers          |
| `RANK()`        | Rank rows with gaps                |
| `DENSE_RANK()`  | Rank rows without gaps             |
| `NTILE()`       | Divide rows into groups            |
| `LAG()`         | Access previous row                |
| `LEAD()`        | Access next row                    |
| `OVER()`        | Define window operation            |
| `PARTITION BY`  | Group rows within window functions |
| `CTE`           | Temporary result set               |
| `Recursive CTE` | Hierarchical and iterative queries |
| `SUM()`         | Calculate totals                   |
| `AVG()`         | Calculate averages                 |
| `COUNT()`       | Count rows                         |

---

# What I Learned

Through this practice, I improved my understanding of:

* Advanced SQL querying
* Analytical SQL functions
* Ranking and partitioning data
* Running totals and cumulative calculations
* Recursive queries
* Business reporting queries
* Combining multiple SQL concepts together
* Writing cleaner and structured SQL code

This practice also helped me understand how SQL is used in real reporting and analytics scenarios instead of only simple database operations.

---

# Repository Structure

```text id="2nj8m4"
Week1/
│
├── dataset.sql
├── window_functions_queries.sql
├── cte_queries.sql
└── README.md


