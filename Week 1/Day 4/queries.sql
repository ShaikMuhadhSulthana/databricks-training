-- =====================================================
-- SQL WINDOW FUNCTIONS AND CTE ASSIGNMENT
-- =====================================================


-- =====================================================
-- WINDOW FUNCTIONS
-- =====================================================

-- Q1: Use ROW_NUMBER() to assign a row number to employees ordered by salary descending.
SELECT 
    employee_name,
    department,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employees;


-- Q2: Use RANK() to rank employees by salary.
SELECT 
    employee_name,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;


-- Q3: Use DENSE_RANK() to rank employees by salary.
SELECT 
    employee_name,
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rank
FROM employees;


-- Q4: Find the top 3 highest-paid employees using a window function.
SELECT *
FROM (
    SELECT 
        employee_name,
        salary,
        ROW_NUMBER() OVER (ORDER BY salary DESC) AS rn
    FROM employees
) t
WHERE rn <= 3;


-- Q5: Rank employees within each department using PARTITION BY.
SELECT 
    employee_name,
    department,
    salary,
    RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS dept_rank
FROM employees;


-- Q6: Display the highest salary in each department using a window function.
SELECT 
    employee_name,
    department,
    salary,
    MAX(salary) OVER (
        PARTITION BY department
    ) AS highest_salary
FROM employees;


-- Q7: Calculate the running total of order amounts ordered by order_date.
SELECT 
    order_id,
    order_date,
    total_amount,
    SUM(total_amount) OVER (
        ORDER BY order_date
    ) AS running_total
FROM orders;


-- Q8: Calculate the cumulative sales amount for each employee.
SELECT 
    employee_id,
    order_date,
    total_amount,
    SUM(total_amount) OVER (
        PARTITION BY employee_id
        ORDER BY order_date
    ) AS cumulative_sales
FROM orders;


-- Q9: Use LAG() to show the previous order amount for each customer.
SELECT 
    customer_id,
    order_date,
    total_amount,
    LAG(total_amount) OVER (
        PARTITION BY customer_id
        ORDER BY order_date
    ) AS previous_order
FROM orders;


-- Q10: Use LEAD() to show the next order amount for each customer.
SELECT 
    customer_id,
    order_date,
    total_amount,
    LEAD(total_amount) OVER (
        PARTITION BY customer_id
        ORDER BY order_date
    ) AS next_order
FROM orders;


-- Q11: Find the difference between the current order amount and previous order amount.
SELECT 
    customer_id,
    order_date,
    total_amount,
    total_amount -
    LAG(total_amount) OVER (
        PARTITION BY customer_id
        ORDER BY order_date
    ) AS difference
FROM orders;


-- Q12: Calculate a moving average of the last 3 orders.
SELECT 
    order_id,
    order_date,
    total_amount,
    AVG(total_amount) OVER (
        ORDER BY order_date
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS moving_average
FROM orders;


-- Q13: Use NTILE(4) to divide employees into salary quartiles.
SELECT 
    employee_name,
    salary,
    NTILE(4) OVER (
        ORDER BY salary DESC
    ) AS quartile
FROM employees;


-- Q14: Find the first order placed by each customer using ROW_NUMBER().
SELECT *
FROM (
    SELECT 
        customer_id,
        order_id,
        order_date,
        ROW_NUMBER() OVER (
            PARTITION BY customer_id
            ORDER BY order_date
        ) AS rn
    FROM orders
) t
WHERE rn = 1;


-- Q15: Find the latest order placed by each customer.
SELECT *
FROM (
    SELECT 
        customer_id,
        order_id,
        order_date,
        ROW_NUMBER() OVER (
            PARTITION BY customer_id
            ORDER BY order_date DESC
        ) AS rn
    FROM orders
) t
WHERE rn = 1;


-- Q16: Display employee salaries along with department average salary.
SELECT 
    employee_name,
    department,
    salary,
    AVG(salary) OVER (
        PARTITION BY department
    ) AS dept_avg_salary
FROM employees;


-- Q17: Find employees earning above their department average salary.
SELECT *
FROM (
    SELECT 
        employee_name,
        department,
        salary,
        AVG(salary) OVER (
            PARTITION BY department
        ) AS dept_avg
    FROM employees
) t
WHERE salary > dept_avg;


-- Q18: Use SUM() OVER(PARTITION BY department) to calculate department payroll.
SELECT 
    employee_name,
    department,
    salary,
    SUM(salary) OVER (
        PARTITION BY department
    ) AS department_payroll
FROM employees;


-- Q19: Find the percentage contribution of each employee salary within their department.
SELECT 
    employee_name,
    department,
    salary,
    ROUND(
        (salary * 100.0) /
        SUM(salary) OVER (PARTITION BY department),
        2
    ) AS salary_percentage
FROM employees;


-- Q20: Use COUNT() OVER() to show total number of employees alongside each row.
SELECT 
    employee_name,
    department,
    COUNT(*) OVER () AS total_employees
FROM employees;


-- =====================================================
-- CTE QUERIES
-- =====================================================

-- Q21: Create a CTE to calculate total sales per employee.
WITH employee_sales AS (
    SELECT 
        employee_id,
        SUM(total_amount) AS total_sales
    FROM orders
    GROUP BY employee_id
)
SELECT *
FROM employee_sales;


-- Q22: Use a CTE to find employees whose sales exceed the company average.
WITH employee_sales AS (
    SELECT 
        employee_id,
        SUM(total_amount) AS total_sales
    FROM orders
    GROUP BY employee_id
)
SELECT *
FROM employee_sales
WHERE total_sales >
(
    SELECT AVG(total_sales)
    FROM employee_sales
);


-- Q23: Create multiple CTEs to calculate customer total spending and rankings.
WITH customer_spending AS (
    SELECT 
        customer_id,
        SUM(total_amount) AS total_spending
    FROM orders
    GROUP BY customer_id
),
customer_rankings AS (
    SELECT 
        customer_id,
        total_spending,
        RANK() OVER (
            ORDER BY total_spending DESC
        ) AS ranking
    FROM customer_spending
)
SELECT *
FROM customer_rankings;


-- Q24: Write a recursive CTE to generate numbers from 1 to 10.
WITH RECURSIVE numbers AS (
    SELECT 1 AS num
    UNION ALL
    SELECT num + 1
    FROM numbers
    WHERE num < 10
)
SELECT *
FROM numbers;


-- Q25: Use a recursive CTE to display employee hierarchy data.
WITH RECURSIVE employee_hierarchy AS (
    SELECT 
        employee_id,
        employee_name,
        manager_id,
        1 AS level
    FROM employees
    WHERE manager_id IS NULL

    UNION ALL

    SELECT 
        e.employee_id,
        e.employee_name,
        e.manager_id,
        eh.level + 1
    FROM employees e
    JOIN employee_hierarchy eh
    ON e.manager_id = eh.employee_id
)
SELECT *
FROM employee_hierarchy;


-- Q26: Create a CTE that filters orders above the average order amount.
WITH avg_orders AS (
    SELECT AVG(total_amount) AS avg_amount
    FROM orders
)
SELECT *
FROM orders
WHERE total_amount >
(
    SELECT avg_amount
    FROM avg_orders
);


-- Q27: Use a CTE and window function together to rank customers by total spending.
WITH customer_totals AS (
    SELECT 
        customer_id,
        SUM(total_amount) AS total_spending
    FROM orders
    GROUP BY customer_id
)
SELECT 
    customer_id,
    total_spending,
    RANK() OVER (
        ORDER BY total_spending DESC
    ) AS customer_rank
FROM customer_totals;


-- Q28: Find the second-highest salary in each department.
SELECT *
FROM (
    SELECT 
        employee_name,
        department,
        salary,
        DENSE_RANK() OVER (
            PARTITION BY department
            ORDER BY salary DESC
        ) AS rnk
    FROM employees
) t
WHERE rnk = 2;


-- Q29: Display the difference between each employee salary and the department maximum salary.
SELECT 
    employee_name,
    department,
    salary,
    MAX(salary) OVER (
        PARTITION BY department
    ) - salary AS salary_difference
FROM employees;


-- Q30: Combine CTEs and window functions to find the top-performing employee in each department based on total sales.
WITH employee_sales AS (
    SELECT 
        e.employee_id,
        e.employee_name,
        e.department,
        SUM(o.total_amount) AS total_sales
    FROM employees e
    JOIN orders o
    ON e.employee_id = o.employee_id
    GROUP BY 
        e.employee_id,
        e.employee_name,
        e.department
),
ranked_sales AS (
    SELECT *,
        RANK() OVER (
            PARTITION BY department
            ORDER BY total_sales DESC
        ) AS dept_rank
    FROM employee_sales
)
SELECT *
FROM ranked_sales
WHERE dept_rank = 1;


-- =====================================================
-- BONUS CHALLENGE
-- =====================================================

-- Monthly sales trends using CTEs, running totals, LAG(), and percentage growth calculations.
WITH monthly_sales AS (
    SELECT 
        DATE_TRUNC('month', order_date) AS month,
        SUM(total_amount) AS total_sales
    FROM orders
    GROUP BY DATE_TRUNC('month', order_date)
),
sales_analysis AS (
    SELECT 
        month,
        total_sales,
        SUM(total_sales) OVER (
            ORDER BY month
        ) AS running_total,
        LAG(total_sales) OVER (
            ORDER BY month
        ) AS previous_month_sales
    FROM monthly_sales
)
SELECT 
    month,
    total_sales,
    running_total,
    previous_month_sales,
    ROUND(
        ((total_sales - previous_month_sales) * 100.0)
        / previous_month_sales,
        2
    ) AS percentage_growth
FROM sales_analysis;
