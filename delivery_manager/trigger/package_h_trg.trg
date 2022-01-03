CREATE OR REPLACE TRIGGER package_h_trg
  AFTER INSERT OR UPDATE OR DELETE ON PACKAGE
  FOR EACH ROW
DECLARE
  v_mod_user package.mod_user%TYPE;
  v_mod_time package.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;

  IF deleting
  THEN
    INSERT INTO package_h
      (package_id
      ,sender_id
      ,recipient_id
      ,weight
      ,send_date
      ,mod_user
      ,created
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:old.package_id
      ,:old.sender_id
      ,:old.recipient_id
      ,:old.weight
      ,:old.send_date
      ,v_mod_user
      ,:old.created
      ,v_mod_time
      ,'D'
      ,:old.version + 1);
  ELSE
    INSERT INTO package_h
      (package_id
      ,sender_id
      ,recipient_id
      ,weight
      ,send_date
      ,mod_user
      ,created
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:new.package_id
      ,:new.sender_id
      ,:new.recipient_id
      ,:new.weight
      ,:new.send_date
      ,:new.mod_user
      ,:new.created
      ,:new.last_mod
      ,:new.dml_flag
      ,:new.version);
  END IF;
END package_h_trg;
/
