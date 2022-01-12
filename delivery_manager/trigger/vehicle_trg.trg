CREATE OR REPLACE TRIGGER vehicle_trg
  BEFORE INSERT OR UPDATE ON vehicle
  FOR EACH ROW
BEGIN
  IF inserting
  THEN
    IF :new.vehicle_id IS NULL
    THEN
      :new.vehicle_id := vehicle_seq.nextval;
    END IF;
  
    :new.created    := SYSDATE;
    :new.dml_flag   := 'I';
    :new.version    := 1;
  ELSE
    if(:old.mileage > :new.mileage) then
      raise_application_error(pkg_exception.gc_mileage_not_valid_exc_code,
                              'New mileage can''t be less then old mileage!');
    end if;
  
    IF nvl(:new.dml_flag, 'U') <> 'D'
    THEN
      :new.dml_flag := 'U';
    END IF;
  
    :new.version := :old.version + 1;
  END IF;

  :new.last_mod := SYSDATE;
  :new.mod_user := sys_context('USERENV', 'OS_USER');
END vehicle_trg;
/
