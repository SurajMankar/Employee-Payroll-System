CREATE OR REPLACE PROCEDURE generate_payroll(emp INT, p_month INT, p_year INT)
LANGUAGE plpgsql AS $$
DECLARE
    gross NUMERIC;
    unpaid_leaves INT;
BEGIN
    gross := calculate_gross_salary(emp);

    SELECT COUNT(*) INTO unpaid_leaves
    FROM attendance
    WHERE emp_id = emp
      AND att_date >= make_date(p_year,p_month,1)
      AND att_date < make_date(p_year,p_month,1) + INTERVAL '1 month'
      AND status = 'Absent';

    INSERT INTO payroll(emp_id,month,year,gross_salary,deductions,net_salary)
    VALUES(emp,p_month,p_year,gross,(unpaid_leaves*500),(gross-(unpaid_leaves*500)));
END;
$$;
