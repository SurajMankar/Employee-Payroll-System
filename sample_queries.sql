--  salary slip for employee 1 for Jan 2025
CALL generate_payroll(1,1,2025);


-- Payroll Summary 
SELECT * FROM payroll_summary;


-- Attendance Report:
SELECT emp_id,
       COUNT(*) FILTER (WHERE status='Present') AS present_days,
       COUNT(*) FILTER (WHERE status='Absent') AS absent_days
FROM attendance
GROUP BY emp_id;