CREATE OR REPLACE FUNCTION person_names RETURN ty_person_name_list IS
  res ty_person_name_list;
BEGIN
  res := ty_person_name_list();

  FOR i IN (SELECT p.person_id
                  ,p.first_name || ' ' || p.last_name AS NAME
              FROM person p)
  LOOP
    res.extend(1);
    res(res.count) := ty_person_name(person_id => i.person_id,
                                     NAME      => i.name);
  END LOOP;

  RETURN(res);
END person_names;
/
