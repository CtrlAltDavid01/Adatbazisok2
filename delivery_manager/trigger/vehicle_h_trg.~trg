CREATE OR REPLACE TRIGGER vehicle_h_trg
  AFTER INSERT OR UPDATE OR DELETE ON vehicle
  FOR EACH ROW
DECLARE
  v_mod_user vehicle.mod_user%TYPE;
  v_mod_time vehicle.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;

  IF deleting
  THEN
    INSERT INTO vehicle_h
      (vehicle_id
      ,TYPE
      ,purchase_date
      ,mileage
      ,load_capacity
      ,license_plate
      ,mod_user
      ,created
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:old.vehicle_id
      ,:old.type
      ,:old.purchase_date
      ,:old.mileage
      ,:old.load_capacity
      ,v_mod_user
      ,:old.created
      ,v_mod_time
      ,'D'
      ,:old.version + 1);
  ELSE
    INSERT INTO vehicle_h
      (vehicle_id
      ,TYPE
      ,purchase_date
      ,mileage
      ,load_capacity
      ,license_plate
      ,mod_user
      ,created
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:new.vehicle_id
      ,:new.type
      ,:new.purchase_date
      ,:new.mileage
      ,:new.load_capacity
      ,:new.mod_user
      ,:new.created
      ,:new.last_mod
      ,:new.dml_flag
      ,:new.version);
  END IF;
END vehicle_h_trg;
/
