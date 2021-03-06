CREATE OR REPLACE FUNCTION sent_packages(p_person_id NUMBER) RETURN NUMBER IS
  sent_count NUMBER;
BEGIN
  SELECT COUNT(*)
    INTO sent_count
    FROM PACKAGE p
    JOIN person s
      ON p.sender_id = s.person_id
   WHERE p.sender_id = p_person_id;
  
  RETURN(sent_count);
END sent_packages;
/
