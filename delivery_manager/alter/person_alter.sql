ALTER TABLE person
  ADD CONSTRAINT is_employee_constraint CHECK (is_employee = 'Y' OR is_employee = 'N');
