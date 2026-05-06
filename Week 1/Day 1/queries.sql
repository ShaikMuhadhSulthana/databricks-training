-- =====================================================
WEEK 1 - DAY 1 SQL PRACTICE
-- =====================================================


-- =====================================================
-- QUESTION 1: Get all employees
-- =====================================================
SELECT * FROM Employee;


-- =====================================================
-- QUESTION 2: Get all departments
-- =====================================================
SELECT * FROM Department;


-- =====================================================
-- QUESTION 3: Get employees with salary > 50000
-- =====================================================
SELECT * FROM Employee
WHERE salary > 50000;


-- =====================================================
-- QUESTION 4: Get employees from IT department
-- =====================================================
SELECT * FROM Employee
WHERE department_id = 1;


-- =====================================================
-- QUESTION 5: Get employee names and salaries
-- =====================================================
SELECT name, salary FROM Employee;


-- =====================================================
-- QUESTION 6: Count total employees
-- =====================================================
SELECT COUNT(*) FROM Employee;


-- =====================================================
-- QUESTION 7: Find average salary
-- =====================================================
SELECT AVG(salary) FROM Employee;


-- =====================================================
-- QUESTION 8: Find maximum salary
-- =====================================================
SELECT MAX(salary) FROM Employee;


-- =====================================================
-- QUESTION 9: Find minimum salary
-- =====================================================
SELECT MIN(salary) FROM Employee;


-- =====================================================
-- QUESTION 10: Get employees sorted by salary (descending)
-- =====================================================
SELECT * FROM Employee
ORDER BY salary DESC;


-- =====================================================
-- QUESTION 11: Get employees hired after 2020
-- =====================================================
SELECT * FROM Employee
WHERE hire_date > '2020-01-01';


-- =====================================================
-- QUESTION 12: Get employees with NULL department
-- =====================================================
SELECT * FROM Employee
WHERE department_id IS NULL;


-- =====================================================
-- QUESTION 13: Inner Join Employee & Department
-- =====================================================
SELECT e.name, d.name AS department
FROM Employee e
INNER JOIN Department d
ON e.department_id = d.department_id;


-- =====================================================
-- QUESTION 14: Left Join (all employees)
-- =====================================================
SELECT e.name, d.name AS department
FROM Employee e
LEFT JOIN Department d
ON e.department_id = d.department_id;


-- =====================================================
-- QUESTION 15: Right Join (all departments)
-- =====================================================
SELECT e.name, d.name AS department
FROM Employee e
RIGHT JOIN Department d
ON e.department_id = d.department_id;


-- =====================================================
-- QUESTION 16: Count employees per department
-- =====================================================
SELECT department_id, COUNT(*) AS total_employees
FROM Employee
GROUP BY department_id;


-- =====================================================
-- QUESTION 17: Departments with more than 2 employees
-- =====================================================
SELECT department_id, COUNT(*) AS total_employees
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2;


-- =====================================================
-- QUESTION 18: Get projects with department names
-- =====================================================
SELECT p.name AS project_name, d.name AS department_name
FROM Project p
JOIN Department d
ON p.department_id = d.department_id;


-- =====================================================
-- QUESTION 19: Employees working in departments with projects
-- =====================================================
SELECT DISTINCT e.name
FROM Employee e
JOIN Project p
ON e.department_id = p.department_id;


-- =====================================================
-- QUESTION 20: Get employees with highest salary
-- =====================================================
SELECT * FROM Employee
WHERE salary = (SELECT MAX(salary) FROM Employee);


-- =====================================================
-- QUESTION 21: Get employees with salary above average
-- =====================================================
SELECT * FROM Employee
WHERE salary > (SELECT AVG(salary) FROM Employee);


-- =====================================================
-- QUESTION 22: Department-wise average salary
-- =====================================================
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id;


-- =====================================================
-- QUESTION 23: Employees whose name starts with 'J'
-- =====================================================
SELECT * FROM Employee
WHERE name LIKE 'J%';


-- =====================================================
-- QUESTION 24: Employees between age 25 and 35
-- =====================================================
SELECT * FROM Employee
WHERE age BETWEEN 25 AND 35;


-- =====================================================
-- QUESTION 25: Count projects per department
-- =====================================================
SELECT department_id, COUNT(*) AS total_projects
FROM Project
GROUP BY department_id;


-- =====================================================
-- QUESTION 26: Employees not assigned to any department
-- =====================================================
SELECT * FROM Employee
WHERE department_id IS NULL;


-- =====================================================
-- QUESTION 27: Departments without employees
-- =====================================================
SELECT d.*
FROM Department d
LEFT JOIN Employee e
ON d.department_id = e.department_id
WHERE e.emp_id IS NULL;


-- =====================================================
-- QUESTION 28: Employees working in HR department
-- =====================================================
SELECT e.*
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id
WHERE d.name = 'HR';


-- =====================================================
-- QUESTION 29: Projects without department
-- =====================================================
SELECT * FROM Project
WHERE department_id IS NULL;


-- =====================================================
-- QUESTION 30: Employee count and average salary per department
-- =====================================================
SELECT department_id,
       COUNT(*) AS total_employees,
       AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id;
