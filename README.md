# Employee Management System (EMS)

## Project Overview

The Employee Management System (EMS) is a database application designed to manage employee records, departments, and roles within an organization. This project involves designing a relational database, implementing queries, and creating reports to facilitate efficient employee management.

## Features

### Employee Records

- Store information about employees, including:
  - Names
  - Contact details
  - Job titles
  - Salaries
  - Department affiliations

### Departments

- Track different departments within the organization, including:
  - Department names
  - Locations

### Roles

- Define various roles or job titles within the company, including:
  - Responsibilities
  - Salary ranges

### Reports and Queries

- Generate reports such as:
  - Employee lists by department
  - Salary distributions
  - Employee performance metrics

## Database Schema

### Tables

#### Employees

- `employee_id` (Primary Key)
- `first_name`
- `last_name`
- `email`
- `phone`
- `hire_date`
- `salary`
- `department_id` (Foreign Key)
- `role_id` (Foreign Key)

#### Departments

- `department_id` (Primary Key)
- `department_name`
- `location`

#### Roles

- `role_id` (Primary Key)
- `role_name`
- `responsibilities`
- `salary_range`
