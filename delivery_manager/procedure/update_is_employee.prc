CREATE OR REPLACE PROCEDURE update_is_employee(p_person_id   NUMBER
                                              ,p_is_employee CHAR) IS
BEGIN
  UPDATE person p
     SET p.is_employee = p_is_employee
   WHERE p.person_id = p_person_id;
END update_is_employee;
/
