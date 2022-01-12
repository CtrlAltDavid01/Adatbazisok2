CREATE OR REPLACE PROCEDURE insert_person(p_first_name       VARCHAR2
                                         ,p_last_name        VARCHAR2
                                         ,p_birth_date       DATE
                                         ,p_email            VARCHAR2
                                         ,p_tel              VARCHAR2
                                         ,p_loc_country_code VARCHAR2
                                         ,p_loc_city         VARCHAR2
                                         ,p_loc_address      VARCHAR2
                                         ,p_is_employee      CHAR) IS
BEGIN
  INSERT INTO person
    (first_name
    ,last_name
    ,birth_date
    ,email
    ,tel
    ,loc_country_code
    ,loc_city
    ,loc_address
    ,is_employee)
  VALUES
    (p_first_name
    ,p_last_name
    ,p_birth_date
    ,p_email
    ,p_tel
    ,p_loc_country_code
    ,p_loc_city
    ,p_loc_address
    ,p_is_employee);
END insert_person;
/
