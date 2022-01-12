CREATE OR REPLACE TRIGGER delivery_package_h_trg
  AFTER INSERT OR UPDATE OR DELETE ON delivery_package
  FOR EACH ROW
DECLARE
  v_mod_user delivery_package.mod_user%TYPE;
  v_mod_time delivery_package.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;

  IF deleting
  THEN
    INSERT INTO delivery_package_h
      (delivery_package_id
      ,delivery_id
      ,package_id
      ,mod_user
      ,created
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:old.delivery_package_id
      ,:old.delivery_id
      ,:old.package_id
      ,v_mod_user
      ,:old.created
      ,v_mod_time
      ,'D'
      ,:old.version + 1);
  ELSE
    INSERT INTO delivery_package_h
      (delivery_package_id
      ,delivery_id
      ,package_id
      ,mod_user
      ,created
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:new.delivery_package_id
      ,:new.delivery_id
      ,:new.package_id
      ,:new.mod_user
      ,:new.created
      ,:new.last_mod
      ,:new.dml_flag
      ,:new.version);
  END IF;
END delivery_package_h_trg;
/
