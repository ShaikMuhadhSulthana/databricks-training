# Week 1 - Day 2 SQL Practice

## Introduction

This repository contains my **Week 1 - Day 2 SQL Practice** queries. In this practice set, I worked on different intermediate SQL concepts using the following tables:

* `Employee`
* `Department`
* `Project`

The main goal of this practice was to improve my understanding of:

* Sorting data using `ORDER BY`
* Working with multiple tables
* Using joins in SQL
* Writing nested queries
* Using aggregate functions
* Grouping and filtering data
* Solving SQL problems step by step

All queries are written in a simple and clean format so they are easy to read and practice.

---

# Repository Overview

The queries in this repository are arranged topic-wise so that learning becomes easier and more organized. Each section focuses on one SQL concept and contains multiple practice queries related to that topic.

This practice set starts with basic sorting queries and gradually moves towards joins, nested queries, correlated queries, and moderate-level SQL problems.

The repository includes:

* SQL practice queries
* Sample database tables
* Topic-wise query organization
* Beginner to intermediate level problems
* Hands-on SQL practice examples

---

# Database Tables Used

## 1. Employee Table

The `Employee` table stores employee-related information such as:

* Employee ID
* Employee name
* Age
* Salary
* Department ID
* Hire date

This table is mainly used for:

* Employee filtering
* Salary analysis
* Age comparison
* Department-wise grouping
* Date-based operations
* Aggregate calculations

---

## 2. Department Table

The `Department` table stores department information.

It contains:

* Department ID
* Department name

This table is used to establish relationships between employees and departments.

---

## 3. Project Table

The `Project` table stores project-related information.

It contains:

* Project ID
* Project name
* Department ID

This table helps in understanding:

* Project allocation
* Department-project relationships
* Multi-table joins
* Department-based project analysis

---

# Topics Covered in This Practice Set

## ORDER BY Queries

This section focuses on sorting records in ascending and descending order.

### Concepts Practiced

* `ORDER BY ASC`
* `ORDER BY DESC`
* Sorting by multiple columns
* Sorting grouped data
* Ordering aggregate results

### Example Operations

* Employees sorted by salary
* Employees sorted by age
* Employees sorted by hire date
* Departments ordered by total salary expense

### Skills Gained

After completing these queries, learners will understand how to:

* Organize query results
* Sort records efficiently
* Display data in meaningful order
* Combine sorting with aggregate functions

---

## JOIN Queries

This section focuses on combining data from multiple related tables.

### Concepts Practiced

* `INNER JOIN`
* `LEFT JOIN`
* Multi-table joins
* Foreign key relationships
* Matching records between tables

### Example Operations

* Employee and department mapping
* Project and department relationships
* Employees without departments
* Departments without employees
* Employees working on department projects

### Skills Gained

By practicing these queries, learners will understand:

* How relational databases work
* How to connect multiple tables
* How foreign keys establish relationships
* How to retrieve combined data from different tables

---

## Nested and Correlated Queries

This section introduces advanced SQL querying techniques.

### Concepts Practiced

* Subqueries
* Nested queries
* Correlated subqueries
* Aggregate subqueries
* Conditional comparisons

### Example Operations

* Employees earning above average salary
* Finding second highest salary
* Departments with most employees
* Employees sharing same department
* Employees hired on same date

### Skills Gained

Learners will be able to:

* Write queries inside queries
* Solve complex database problems
* Use aggregate functions inside conditions
* Perform advanced filtering operations

---

## Combined Moderate Difficulty Queries

This section combines multiple SQL concepts together to solve practical problems.

### Concepts Practiced

* Aggregate functions
* Nested filtering
* Date functions
* Grouping and ordering
* Multi-condition logic
* Advanced joins

### Example Operations

* Salary analysis by department
* Employee hiring analysis
* Highest salary employee in each department
* Employees older than department average age
* Departments with project counts

### Skills Gained

After completing this section, learners will understand how to:

* Combine multiple SQL concepts together
* Solve real-world database scenarios
* Analyze large sets of data efficiently
* Improve logical thinking using SQL

---

# SQL Concepts Used

The following SQL concepts are covered throughout the practice set:

| SQL Concept        | Purpose                                       |
| ------------------ | --------------------------------------------- |
| `SELECT`           | Retrieve data from tables                     |
| `WHERE`            | Filter records based on conditions            |
| `ORDER BY`         | Sort records                                  |
| `GROUP BY`         | Group rows with same values                   |
| `HAVING`           | Filter grouped data                           |
| `JOIN`             | Combine data from multiple tables             |
| `LEFT JOIN`        | Retrieve all records including unmatched rows |
| `AVG()`            | Find average values                           |
| `SUM()`            | Calculate total values                        |
| `COUNT()`          | Count records                                 |
| `MAX()`            | Find highest values                           |
| `MIN()`            | Find minimum values                           |
| `IN`               | Match multiple values                         |
| `ALL`              | Compare against all values in subqueries      |
| Subqueries         | Execute query inside another query            |
| Correlated Queries | Reference outer query inside subquery         |

---

# What I Learned on Day 2

By practicing these queries, I was able to improve my understanding of:

* Writing SQL queries properly
* Working with multiple tables
* Using joins and subqueries
* Filtering and grouping records
* Using aggregate functions
* Solving SQL problems logically
* Understanding relational database concepts
* Writing cleaner and more readable SQL queries

---

# Learning Outcomes on Day 2

After completing all queries in this repository, learners will be able to:

* Retrieve data efficiently from databases
* Apply filtering conditions correctly
* Perform sorting and grouping operations
* Work with multiple related tables
* Write nested and correlated queries
* Use aggregate functions effectively
* Analyze and summarize large datasets
* Solve real-world SQL problems confidently

---

# Repository Structure

```text
Week1-Day2/
│
├── dataset.sql
├── queries.sql
├── README.md
│
└── output_screenshots/
```

### File Description

| File Name             | Description                                     |
| --------------------- | ----------------------------------------------- |
| `dataset.sql`         | Contains table creation and insert queries      |
| `queries.sql`         | Contains all SQL practice queries               |
| `README.md`           | Complete documentation of the repository        |
| `output_screenshots/` | Optional folder for query execution screenshots |



