
-- DEPARTMENTS TABLE

CREATE TABLE departments (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL UNIQUE
);


--EMPLOYEES TABLE

CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    dept_id INT REFERENCES departments(dept_id) ON DELETE SET NULL,
    join_date DATE,
    base_salary NUMERIC(12,2) NOT NULL CHECK (base_salary >= 0)
);


-- SALARY STRUCTURE TABLE

CREATE TABLE salary_structure (
    salary_id SERIAL PRIMARY KEY,
    emp_id INT UNIQUE REFERENCES employees(emp_id) ON DELETE CASCADE,
    hra NUMERIC(12,2),
    da NUMERIC(12,2),
    pf NUMERIC(12,2),
    bonus NUMERIC(12,2)
);


-- ATTENDANCE TABLE

CREATE TABLE attendance (
    att_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    emp_id INT REFERENCES employees(emp_id) ON DELETE CASCADE,
    att_date DATE NOT NULL,
    status VARCHAR(10) CHECK (status IN ('Present','Absent','Leave'))
);


--  PAYROLL TABLE 
CREATE TABLE payroll (
    payroll_id SERIAL PRIMARY KEY,
    emp_id INT REFERENCES employees(emp_id) ON DELETE CASCADE,
    month INT CHECK (month BETWEEN 1 AND 12),
    year INT CHECK (year >= 2000),
    gross_salary NUMERIC(12,2),
    deductions NUMERIC(12,2),
    net_salary NUMERIC(12,2),
    generated_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);