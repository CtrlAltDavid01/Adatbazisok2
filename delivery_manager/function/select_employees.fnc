CREATE OR REPLACE FUNCTION select_employees RETURN ty_person_list IS
  res ty_person_list;
BEGIN
  res := ty_person_list();

  FOR i IN (SELECT * FROM person p WHERE p.is_employee = 'Y')
  LOOP
    res.extend(1);
    res(res.count) := ty_person(person_id        => i.person_id,
                                first_name       => i.first_name,
                                last_name        => i.last_name,
                                birth_date       => i.birth_date,
                                email            => i.email,
                                tel              => i.tel,
                                loc_country_code => i.loc_country_code,
                                loc_city         => i.loc_city,
                                loc_address      => i.loc_address,
                                is_employee      => i.is_employee);
  END LOOP;

  RETURN(res);
END select_employees;
/
