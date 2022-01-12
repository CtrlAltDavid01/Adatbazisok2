CREATE OR REPLACE FUNCTION select_person(p_person_id NUMBER)
  RETURN ty_person IS
  res ty_person;
BEGIN
  res := ty_person();
  
  SELECT p.person_id
        ,p.first_name
        ,p.last_name
        ,p.birth_date
        ,p.email
        ,p.tel
        ,p.loc_country_code
        ,p.loc_city
        ,p.loc_address
    INTO res.person_id
        ,res.first_name
        ,res.last_name
        ,res.birth_date
        ,res.email
        ,res.tel
        ,res.loc_country_code
        ,res.loc_city
        ,res.loc_address
    FROM person p
   WHERE p.person_id = p_person_id;
   
  RETURN(res);
END select_person;
/
