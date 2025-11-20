
--payroll summary
CREATE OR REPLACE VIEW payroll_summary AS
SELECT p.payroll_id,
       p.emp_id,
       CONCAT(e.first_name,' ',e.last_name) AS employee,
       d.dept_name,
       p.month,
       p.year,
       p.gross_salary,
       p.deductions,
       p.net_salary,
       p.generated_on
FROM payroll p
JOIN employees e ON p.emp_id = e.emp_id
LEFT JOIN departments d ON e.dept_id = d.dept_id;