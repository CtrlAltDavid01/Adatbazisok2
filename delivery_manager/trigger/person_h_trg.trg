CREATE OR REPLACE TRIGGER person_h_trg
  AFTER INSERT OR UPDATE OR DELETE ON person
  FOR EACH ROW
DECLARE
  v_mod_user person.mod_user%TYPE;
  v_mod_time person.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;

  IF deleting
  THEN
    INSERT INTO person_h
      (person_id
      ,first_name
      ,last_name
      ,birth_date
      ,email
      ,tel
      ,loc_country_code
      ,loc_city
      ,loc_address
      ,mod_user
      ,created
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:old.person_id
      ,:old.first_name
      ,:old.last_name
      ,:old.birth_date
      ,:old.email
      ,:old.tel
      ,:old.loc_country_code
      ,:old.loc_city
      ,:old.loc_address
      ,v_mod_user
      ,:old.created
      ,v_mod_time
      ,'D'
      ,:old.version + 1);
  ELSE
    INSERT INTO person_h
      (person_id
      ,first_name
      ,last_name
      ,birth_date
      ,email
      ,tel
      ,loc_country_code
      ,loc_city
      ,loc_address
      ,mod_user
      ,created
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:new.person_id
      ,:new.first_name
      ,:new.last_name
      ,:new.birth_date
      ,:new.email
      ,:new.tel
      ,:new.loc_country_code
      ,:new.loc_city
      ,:new.loc_address
      ,:new.mod_user
      ,:new.created
      ,:new.last_mod
      ,:new.dml_flag
      ,:new.version);
  END IF;
END person_h_trg;
/
