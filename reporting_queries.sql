--. Employee Full Profile Report

SELECT 
    e.emp_id,
    e.first_name || ' ' || e.last_name AS employee_name,
    d.dept_name,
    e.join_date,
    e.base_salary,
    s.hra, s.da, s.bonus, s.pf
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id
LEFT JOIN salary_structure s ON e.emp_id = s.emp_id
ORDER BY e.emp_id;


--Department-wise Salary Cost

SELECT 
    d.dept_name,
    SUM(p.net_salary) AS total_salary_cost
FROM payroll p
JOIN employees e ON e.emp_id = p.emp_id
JOIN departments d ON d.dept_id = e.dept_id
WHERE p.month = 1 AND p.year = 2025
GROUP BY d.dept_name
ORDER BY total_salary_cost DESC;


--Employee Attendance Summary


SELECT 
    emp_id,
    COUNT(*) FILTER (WHERE status='Present') AS present_days,
    COUNT(*) FILTER (WHERE status='Absent') AS absent_days,
    COUNT(*) FILTER (WHERE status='Leave') AS leave_days
FROM attendance
GROUP BY emp_id
ORDER BY emp_id;