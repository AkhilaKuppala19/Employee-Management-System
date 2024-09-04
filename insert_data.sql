INSERT INTO Departments (department_name, location) VALUES ('HR', 'New York');
INSERT INTO Departments (department_name, location) VALUES ('Engineering', 'San Francisco');

INSERT INTO Roles (role_name, responsibilities, salary_range) VALUES ('Software Engineer', 'Develop and maintain software applications', '70000-90000');
INSERT INTO Roles (role_name, responsibilities, salary_range) VALUES ('HR Manager', 'Manage recruitment and employee relations', '60000-80000');

INSERT INTO Employees (first_name, last_name, email, phone, hire_date, salary, department_id, role_id) VALUES ('John', 'Doe', 'john.doe@example.com', '123-456-7890', '2023-01-15', 75000.00, 2, 1);
INSERT INTO Employees (first_name, last_name, email, phone, hire_date, salary, department_id, role_id) VALUES ('Jane', 'Smith', 'jane.smith@example.com', '098-765-4321', '2022-03-22', 65000.00, 1, 2);
