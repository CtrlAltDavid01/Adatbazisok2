CREATE OR REPLACE TRIGGER delivery_h_trg
  AFTER INSERT OR UPDATE OR DELETE ON delivery
  FOR EACH ROW
DECLARE
  v_mod_user delivery.mod_user%TYPE;
  v_mod_time delivery.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;

  IF deleting
  THEN
    INSERT INTO delivery_h
      (delivery_id
      ,vehicle_id
      ,delivery_date
      ,mod_user
      ,created
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:old.delivery_id
      ,:old.vehicle_id
      ,:old.delivery_date
      ,v_mod_user
      ,:old.created
      ,v_mod_time
      ,'D'
      ,:old.version + 1);
  ELSE
    INSERT INTO delivery_h
      (delivery_id
      ,vehicle_id
      ,delivery_date
      ,mod_user
      ,created
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:new.delivery_id
      ,:new.vehicle_id
      ,:new.delivery_date
      ,:new.mod_user
      ,:new.created
      ,:new.last_mod
      ,:new.dml_flag
      ,:new.version);
  END IF;
END delivery_h_trg;
/
