CREATE OR REPLACE TYPE ty_person AS OBJECT
(
  person_id        NUMBER,
  first_name       VARCHAR2(40),
  last_name        VARCHAR2(40),
  birth_date       DATE,
  email            VARCHAR2(100),
  tel              VARCHAR2(20),
  loc_country_code VARCHAR2(2),
  loc_city         VARCHAR2(100),
  loc_address      VARCHAR2(100),
  is_employee      CHAR(1),

  CONSTRUCTOR FUNCTION ty_person RETURN SELF AS RESULT
)
/
CREATE OR REPLACE TYPE BODY ty_person IS

  CONSTRUCTOR FUNCTION ty_person RETURN SELF AS RESULT IS
  BEGIN
    RETURN;
  END;

END;
/
