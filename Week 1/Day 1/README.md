# 📊 SQL Practice Project – Week 1 Day 1

## 🔹 Project Overview

This project is a structured SQL practice module designed to build a strong foundation in querying and analyzing relational databases. It is based on a simulated organizational dataset that represents real-world business scenarios involving employees, departments, and projects.

The project includes a set of 30 carefully designed SQL queries that progress from basic to intermediate complexity. These queries help in understanding how to retrieve, filter, and analyze data efficiently using SQL.

The dataset reflects realistic conditions such as multiple departments, varying salary ranges, different hiring dates, and the presence of NULL values. This allows learners to experience practical challenges that occur in real-world data handling and database management.

---

## 🗂️ Database Structure

The project uses three main tables:

### 🧑 Employee

This table stores employee-related information such as:

* Employee ID
* Name
* Age
* Salary
* Department association
* Hiring date

### 🏢 Department

This table contains:

* Department ID
* Department name

###  Project

This table includes:

* Project ID
* Project name
* Department association

---

## 🔗 Relationships Between Tables

* A **Department** can have multiple **Employees**
* A **Department** can manage multiple **Projects**
* Each **Employee** may or may not be linked to a Department (NULL values possible)
* Some **Projects** may not be assigned to any Department

These relationships help in understanding how data is connected across tables in a relational database.

---

## 🧪 Dataset Characteristics

The dataset is designed to simulate real-world scenarios and includes:

* Multiple departments such as IT, HR, Finance, and Marketing
* Employees with varying salary ranges and age groups
* Hiring dates across different years
* Records containing NULL values for testing edge cases
* Projects associated with departments and some without associations

---

## 📚 Concepts Covered

This project focuses on the following SQL concepts:

### 🔹 Basic Queries

* Retrieving data using SELECT
* Filtering records using WHERE
* Selecting specific columns

### 🔹 String Matching

* Pattern searching using LIKE
* Use of wildcard characters (`%`, `_`)

### 🔹 Date Operations

* Filtering records based on date conditions
* Extracting components such as year and month
* Working with time-based data

### 🔹 Aggregate Functions

* SUM() for total values
* AVG() for average calculations
* MIN() and MAX() for identifying range
* COUNT() for counting records

### 🔹 GROUP BY

* Grouping data based on columns
* Performing aggregations on grouped data

### 🔹 HAVING Clause

* Filtering grouped results
* Applying conditions on aggregated values
