CREATE OR REPLACE PROCEDURE delete_person(p_person_id NUMBER) IS
BEGIN
  DELETE FROM person p WHERE p.person_id = p_person_id;
END delete_person;
/
