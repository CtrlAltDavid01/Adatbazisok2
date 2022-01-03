create or replace trigger delivery_packages_trg
  BEFORE INSERT OR UPDATE ON delivery_packages
  FOR EACH ROW
begin
  IF inserting
  THEN
    IF :new.delivery_packages_id IS NULL
    THEN
      :new.delivery_packages_id := delivery_packages_seq.nextval;
    END IF;
  
    :new.created    := SYSDATE;
    :new.dml_flag   := 'I';
    :new.version    := 1;
  ELSE
    IF nvl(:new.dml_flag, 'U') <> 'D'
    THEN
      :new.dml_flag := 'U';
    END IF;
  
    :new.version := :old.version + 1;
  END IF;

  :new.last_mod := SYSDATE;
  :new.mod_user := sys_context('USERENV', 'OS_USER');
end delivery_packages_trg;
/
