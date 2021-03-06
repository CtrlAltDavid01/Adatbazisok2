create or replace trigger delivery_driver_is_empl_trg
  BEFORE INSERT OR UPDATE ON delivery
  FOR EACH ROW
declare  
  is_employee char(1);
begin
    select p.is_employee into is_employee from person p where p.person_id = :new.driver_id;
    
    if is_employee <> 'Y' then
      raise_application_error(pkg_exception.gc_person_not_empl_exc_code,
                              'The driver isn''t an employee');
    end if;
end delivery_driver_is_empl_trg;
/
