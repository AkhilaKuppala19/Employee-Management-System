-- Employee List by Department
SELECT e.first_name, e.last_name, d.department_name
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id
WHERE d.department_name = 'Engineering';


-- Salary Distribution
SELECT role_id, MIN(salary) AS min_salary, MAX(salary) AS max_salary, AVG(salary) AS avg_salary
FROM Employees
GROUP BY role_id;


-- List All Employees with Their Department and Role
SELECT e.first_name, e.last_name, d.department_name, r.role_name, e.salary
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id
JOIN Roles r ON e.role_id = r.role_id;


-- Find Employees with Salaries Above a Certain Threshold
SELECT first_name, last_name, salary
FROM Employees
WHERE salary > 70000;


-- Calculate the Total Salary Expense per Department
SELECT d.department_name, SUM(e.salary) AS total_salary_expense
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id
GROUP BY d.department_name;


-- Find the Highest-Paid Employee in Each Department
SELECT d.department_name, e.first_name, e.last_name, MAX(e.salary) AS highest_salary
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id
GROUP BY d.department_name;


-- List Employees Who Joined in the Last 6 Months
SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH);


-- Update an Employee’s Salary
UPDATE Employees
SET salary = 80000
WHERE employee_id = 1;


-- Delete an Employee Record
DELETE FROM Employees
WHERE employee_id = 5;


-- List Departments and the Number of Employees in Each
SELECT d.department_name, COUNT(e.employee_id) AS num_employees
FROM Departments d
LEFT JOIN Employees e ON d.department_id = e.department_id
GROUP BY d.department_name;


-- Find the Average Salary for Each Role
SELECT r.role_name, AVG(e.salary) AS average_salary
FROM Employees e
JOIN Roles r ON e.role_id = r.role_id
GROUP BY r.role_name;


-- Find Employees with Missing or Incomplete Contact Information
SELECT first_name, last_name, email, phone
FROM Employees
WHERE email IS NULL OR phone IS NULL;


-- Retrieve Recent Hiring Trends
SELECT YEAR(hire_date) AS year, COUNT(employee_id) AS number_of_hires
FROM Employees
GROUP BY YEAR(hire_date)
ORDER BY year DESC;


-- List Employees and Their Role Responsibilities
SELECT e.first_name, e.last_name, r.role_name, r.responsibilities
FROM Employees e
JOIN Roles r ON e.role_id = r.role_id;


-- Retrieve Employees Sorted by Salary
SELECT first_name, last_name, salary
FROM Employees
ORDER BY salary DESC;


--Count the Number of Employees per Role
SELECT r.role_name, COUNT(e.employee_id) AS number_of_employees
FROM Roles r
LEFT JOIN Employees e ON r.role_id = e.role_id
GROUP BY r.role_name;


--Find Employees Who Have Been in the Company for More Than 5 Years
SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date <= DATE_SUB(CURDATE(), INTERVAL 5 YEAR);



