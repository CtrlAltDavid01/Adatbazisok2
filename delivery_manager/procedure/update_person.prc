CREATE OR REPLACE PROCEDURE update_person(p_person_id        NUMBER
                                         ,p_first_name       VARCHAR2
                                         ,p_last_name        VARCHAR2
                                         ,p_email            VARCHAR2
                                         ,p_tel              VARCHAR2
                                         ,p_loc_country_code VARCHAR2
                                         ,p_loc_city         VARCHAR2
                                         ,p_loc_address      VARCHAR2) IS
  v_person person%ROWTYPE;
BEGIN
  BEGIN
    SELECT * INTO v_person FROM person p WHERE p.person_id = p_person_id;
  EXCEPTION
    WHEN no_data_found THEN
      raise_application_error(pkg_exception.gc_no_person_exc_code,
                              'No person to update!');
  END;

  IF p_first_name IS NOT NULL
  THEN
    v_person.first_name := p_first_name;
  END IF;

  IF p_last_name IS NOT NULL
  THEN
    v_person.last_name := p_last_name;
  END IF;

  IF p_email IS NOT NULL
  THEN
    v_person.email := p_email;
  END IF;

  IF p_tel IS NOT NULL
  THEN
    v_person.tel := p_tel;
  END IF;

  IF p_loc_country_code IS NOT NULL
  THEN
    v_person.loc_country_code := p_loc_country_code;
  END IF;

  IF p_loc_city IS NOT NULL
  THEN
    v_person.loc_city := p_loc_city;
  END IF;

  IF p_loc_address IS NOT NULL
  THEN
    v_person.loc_address := p_loc_address;
  END IF;

  UPDATE person p
     SET p.first_name       = v_person.first_name
        ,p.last_name        = v_person.last_name
        ,p.email            = v_person.email
        ,p.tel              = v_person.tel
        ,p.loc_country_code = v_person.loc_country_code
        ,p.loc_city         = v_person.loc_city
        ,p.loc_address      = v_person.loc_address
   WHERE p.person_id = p_person_id;
END update_person;
/
