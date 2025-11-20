--calculate gross salary of employee based on ID

CREATE OR REPLACE FUNCTION calculate_gross_salary(emp INT)
RETURNS NUMERIC AS $$
DECLARE
    base NUMERIC;
    hra NUMERIC;
    da NUMERIC;
    bonus NUMERIC;
BEGIN
    SELECT e.base_salary, s.hra, s.da, s.bonus
    INTO base, hra, da, bonus
    FROM employees e
    JOIN salary_structure s ON e.emp_id = s.emp_id
    WHERE e.emp_id = emp;

    RETURN base + hra + da + bonus;
END;
$$ LANGUAGE plpgsql;