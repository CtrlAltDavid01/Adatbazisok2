CREATE OR REPLACE FUNCTION received_packages(p_person_id NUMBER)
  RETURN NUMBER IS
  received_count NUMBER;
BEGIN
  SELECT COUNT(*)
    INTO received_count
    FROM PACKAGE p
    JOIN person r
      ON p.recipient_id = r.person_id
   WHERE p.recipient_id = p_person_id;

  RETURN(received_count);
END received_packages;
/
