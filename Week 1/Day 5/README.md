# SQL Joins Assignment – PostgreSQL Practice

## About This Repository

This repository contains my practice work on SQL Joins using PostgreSQL.
The assignment was designed to improve understanding of how tables are connected using relationships and how different join operations work in real database systems.

The practice includes working with multiple related tables such as students, instructors, courses, and enrollments. The queries focus on retrieving related data, handling missing records, and understanding how joins behave in different scenarios.

The main goal of this practice was to strengthen concepts related to relational databases and improve confidence in writing complex SQL queries involving multiple tables.

---

# Database Structure

The assignment is based on four related tables:

* `students`
* `courses`
* `instructors`
* `enrollments`

These tables are connected using primary key and foreign key relationships.

---

# Tables Used

## Students Table

Stores student information.

| Column Name    | Description           |
| -------------- | --------------------- |
| `student_id`   | Unique student ID     |
| `student_name` | Student name          |
| `email`        | Student email address |

---

## Instructors Table

Stores instructor details.

| Column Name       | Description                      |
| ----------------- | -------------------------------- |
| `instructor_id`   | Unique instructor ID             |
| `instructor_name` | Instructor name                  |
| `department`      | Department handled by instructor |

---

## Courses Table

Stores available course information.

| Column Name     | Description            |
| --------------- | ---------------------- |
| `course_id`     | Unique course ID       |
| `course_name`   | Name of the course     |
| `instructor_id` | Assigned instructor ID |

Some courses intentionally do not have instructors assigned to practice join-related edge cases.

---

## Enrollments Table

Stores student enrollment records.

| Column Name       | Description          |
| ----------------- | -------------------- |
| `enrollment_id`   | Unique enrollment ID |
| `student_id`      | Student reference    |
| `course_id`       | Course reference     |
| `enrollment_date` | Date of enrollment   |

This table acts as a bridge between students and courses.

---

# SQL Concepts Practiced

This assignment mainly focuses on SQL Join operations and relational data retrieval.

---

# Joins Covered

## INNER JOIN

Used to retrieve matching records between related tables.

### Examples Practiced

* Students enrolled in courses
* Course and instructor relationships

---

## LEFT JOIN

Used to retrieve all records from the left table, including unmatched rows.

### Examples Practiced

* Students without enrollments
* Courses without enrollments
* Instructors without assigned courses

---

## RIGHT JOIN

Used to retrieve all records from the right table even if matching rows do not exist in the left table.

### Examples Practiced

* Student enrollment details including unmatched students

---

## FULL OUTER JOIN

Used to retrieve all matching and non-matching rows from both tables.

### Examples Practiced

* Students and enrollments
* Courses and instructors

This helped in understanding how SQL handles missing relationships between tables.

---

## CROSS JOIN

Used to generate all possible combinations between two tables.

### Example Practiced

* Every student paired with every course

---

# Assignment Tasks Covered

The queries in this repository include:

* Displaying students and enrolled courses
* Finding students without enrollments
* Finding courses without instructors
* Identifying courses with no enrollments
* Displaying instructor-course relationships
* Creating reports using multiple joins
* Handling NULL values in joins
* Working with unmatched records
* Generating combinations using CROSS JOIN

---

# Important SQL Features Used

| SQL Concept       | Purpose                             |
| ----------------- | ----------------------------------- |
| `INNER JOIN`      | Match related records               |
| `LEFT JOIN`       | Include unmatched left table rows   |
| `RIGHT JOIN`      | Include unmatched right table rows  |
| `FULL OUTER JOIN` | Include all rows from both tables   |
| `CROSS JOIN`      | Generate combinations               |
| `FOREIGN KEY`     | Create relationships between tables |
| `NULL Handling`   | Manage missing data                 |
| `Aliases`         | Improve query readability           |

---

# What I Learned

Through this assignment, I gained practical understanding of:

* Relational database design
* Table relationships
* Foreign key usage
* Different SQL join operations
* Handling unmatched records
* Writing multi-table queries
* Understanding NULL values in joins
* Combining multiple joins in a single query

This practice also improved my ability to read and analyze relational data structures more effectively.



