-- =====================================================
--  WEEK 1 - DAY 1 SQL PRACTICE (BASED ON GIVEN QUESTIONS)
-- =====================================================


-- =====================================================
-- BASIC QUERIES
-- =====================================================

-- Q1: Select all columns from the Employee table.
SELECT * FROM Employee;

-- Q2: Select only the name and salary columns from the Employee table.
SELECT name, salary FROM Employee;

-- Q3: Select employees who are older than 30.
SELECT * FROM Employee
WHERE age > 30;

-- Q4: Select the names of all departments.
SELECT name FROM Department;

-- Q5: Select employees who work in the IT department.
SELECT e.*
FROM Employee e
JOIN Department d ON e.department_id = d.department_id
WHERE d.name = 'IT';


-- =====================================================
-- STRING MATCHING QUERIES
-- =====================================================

-- Q6: Select employees whose names start with 'J'.
SELECT * FROM Employee
WHERE name LIKE 'J%';

-- Q7: Select employees whose names end with 'e'.
SELECT * FROM Employee
WHERE name LIKE '%e';

-- Q8: Select employees whose names contain 'a'.
SELECT * FROM Employee
WHERE name LIKE '%a%';

-- Q9: Select employees whose names are exactly 9 characters long.
SELECT * FROM Employee
WHERE LENGTH(name) = 9;

-- Q10: Select employees whose names have 'o' as the second character.
SELECT * FROM Employee
WHERE name LIKE '_o%';


-- =====================================================
-- DATE QUERIES
-- =====================================================

-- Q11: Select employees hired in the year 2020.
SELECT * FROM Employee
WHERE YEAR(hire_date) = 2020;

-- Q12: Select employees hired in January of any year.
SELECT * FROM Employee
WHERE MONTH(hire_date) = 1;

-- Q13: Select employees hired before 2019.
SELECT * FROM Employee
WHERE hire_date < '2019-01-01';

-- Q14: Select employees hired on or after March 1, 2021.
SELECT * FROM Employee
WHERE hire_date >= '2021-03-01';

-- Q15: Select employees hired in the last 2 years.
SELECT * FROM Employee
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR);


-- =====================================================
-- AGGREGATE QUERIES
-- =====================================================

-- Q16: Select the total salary of all employees.
SELECT SUM(salary) FROM Employee;

-- Q17: Select the average salary of employees.
SELECT AVG(salary) FROM Employee;

-- Q18: Select the minimum salary in the Employee table.
SELECT MIN(salary) FROM Employee;

-- Q19: Select the number of employees in each department.
SELECT department_id, COUNT(*) 
FROM Employee
GROUP BY department_id;

-- Q20: Select the average salary of employees in each department.
SELECT department_id, AVG(salary)
FROM Employee
GROUP BY department_id;


-- =====================================================
-- GROUP BY QUERIES
-- =====================================================

-- Q21: Select the total salary for each department.
SELECT department_id, SUM(salary)
FROM Employee
GROUP BY department_id;

-- Q22: Select the average age of employees in each department.
SELECT department_id, AVG(age)
FROM Employee
GROUP BY department_id;

-- Q23: Select the number of employees hired in each year.
SELECT YEAR(hire_date) AS year, COUNT(*)
FROM Employee
GROUP BY YEAR(hire_date);

-- Q24: Select the highest salary in each department.
SELECT department_id, MAX(salary)
FROM Employee
GROUP BY department_id;

-- Q25: Select the department with the highest average salary.
SELECT department_id
FROM Employee
GROUP BY department_id
ORDER BY AVG(salary) DESC
LIMIT 1;


-- =====================================================
-- HAVING QUERIES
-- =====================================================

-- Q26: Select departments with more than 2 employees.
SELECT department_id, COUNT(*)
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2;

-- Q27: Select departments with an average salary greater than 55000.
SELECT department_id, AVG(salary)
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 55000;

-- Q28: Select years with more than 1 employee hired.
SELECT YEAR(hire_date) AS year, COUNT(*)
FROM Employee
GROUP BY YEAR(hire_date)
HAVING COUNT(*) > 1;

-- Q29: Select departments with a total salary expense less than 100000.
SELECT department_id, SUM(salary)
FROM Employee
GROUP BY department_id
HAVING SUM(salary) < 100000;

-- Q30: Select departments with the maximum salary above 75000.
SELECT department_id, MAX(salary)
FROM Employee
GROUP BY department_id
HAVING MAX(salary) > 75000;
