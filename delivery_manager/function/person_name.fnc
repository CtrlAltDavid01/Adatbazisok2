CREATE OR REPLACE FUNCTION person_name(p_person_id NUMBER) RETURN VARCHAR2 IS
  res VARCHAR2(100);
BEGIN
  SELECT p.first_name || ' ' || p.last_name
    INTO res
    FROM person p
   WHERE p.person_id = p_person_id;
  RETURN(res);
END person_name;
/
