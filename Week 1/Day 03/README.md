# Week 1 - Day 3 SQL Practice

## About This Repository

This repository contains the SQL practice work completed as part of **Week 1 - Day 3**.
The queries are written using an `Employees` table and cover a variety of SQL concepts commonly used in database management and data retrieval.

The main focus of this practice session was to improve query writing skills by working with different SQL clauses, operators, filtering techniques, grouping methods, and pattern matching operations.

---

# Database Details

## Table Used

### `Employees`

The practice queries are based on a single table named `Employees`.

| Column Name  | Description         |
| ------------ | ------------------- |
| `emp_id`     | Employee ID         |
| `emp_name`   | Employee Name       |
| `department` | Department Name     |
| `salary`     | Employee Salary     |
| `city`       | Employee Location   |
| `experience` | Years of Experience |

The dataset contains employees from multiple departments and cities with different salary ranges and experience levels, making it suitable for practicing various SQL operations.

---

# Concepts Covered

## SELECT Queries

Practiced retrieving:

* Complete table data
* Specific columns
* Department-wise employee records
* Employee names with salary and experience details

---

## WHERE Clause

Worked on filtering records using conditions based on:

* Salary
* Department
* City
* Experience

Examples include:

* Employees with salary greater than a given amount
* Employees from a particular city
* Employees belonging to a specific department

---

## GROUP BY Queries

Used grouping operations to perform calculations department-wise and city-wise.

Functions practiced:

* `SUM()`
* `AVG()`
* `COUNT()`
* `MAX()`
* `MIN()`

---

## HAVING Clause

Used `HAVING` to filter grouped records after aggregate calculations.

Examples include:

* Departments with more than a specific number of employees
* Departments with high average salary
* Cities with multiple employees

---

## TOP / LIMIT Queries

Practiced retrieving limited records using sorting and filtering techniques.

Examples include:

* Highest paid employees
* Most experienced employees
* Top salary records department-wise

---

## DISTINCT Queries

Worked with unique value retrieval for:

* Departments
* Cities
* Salaries
* Department-city combinations

---

## Comparison Operators

Practiced filtering records using:

* Greater than (`>`)
* Less than (`<`)
* Greater than or equal to (`>=`)
* Less than or equal to (`<=`)
* Not equal to (`<>`)

---

## Logical Operators

Used logical conditions with:

* `AND`
* `OR`
* `NOT`

These queries helped in combining multiple filtering conditions effectively.

---

## IN and NOT IN Operators

Practiced matching multiple values using:

* `IN`
* `NOT IN`

Useful for filtering records against a list of values.

---

## BETWEEN Operator

Worked on range-based filtering for:

* Salary ranges
* Experience ranges
* Employee ID ranges

---

## LIKE Operator

Practiced pattern matching using wildcards.

Wildcards used:

* `%`
* `_`

Examples include:

* Names starting with specific letters
* Names ending with certain characters
* Cities starting with a particular letter

---

# SQL Functions and Clauses Used

| Concept             | Usage                   |
| ------------------- | ----------------------- |
| `SELECT`            | Retrieve records        |
| `WHERE`             | Filter rows             |
| `GROUP BY`          | Group records           |
| `HAVING`            | Filter grouped data     |
| `DISTINCT`          | Remove duplicate values |
| `ORDER BY`          | Sort records            |
| `LIMIT`             | Restrict number of rows |
| `LIKE`              | Pattern matching        |
| `IN / NOT IN`       | Match multiple values   |
| `BETWEEN`           | Range filtering         |
| Aggregate Functions | Data calculations       |

---

