PROMPT Creating user DELIVERY_MANAGER...

----------------------------------
-- 1. Create user, add grants   --
----------------------------------
DECLARE
  v_count NUMBER;
BEGIN
  SELECT COUNT(*)
    INTO v_count
    FROM dba_users t
   WHERE t.username = 'DELIVERY_MANAGER';
  IF v_count = 1
  THEN
    EXECUTE IMMEDIATE 'DROP USER delivery_manager CASCADE';
  END IF;
END;
/
CREATE USER delivery_manager 
  IDENTIFIED BY "12345678" 
  DEFAULT TABLESPACE users
  QUOTA UNLIMITED ON users
;

GRANT CREATE SESSION TO delivery_manager;
GRANT CREATE TABLE TO delivery_manager;
GRANT CREATE VIEW TO delivery_manager;
GRANT CREATE SEQUENCE TO delivery_manager;
GRANT CREATE PROCEDURE TO delivery_manager;
GRANT CREATE TYPE TO delivery_manager;
GRANT CREATE TRIGGER TO delivery_manager;

PROMPT Done.
