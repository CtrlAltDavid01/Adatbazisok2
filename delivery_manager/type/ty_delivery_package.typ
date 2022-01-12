CREATE OR REPLACE TYPE ty_delivery_package AS OBJECT
(
  delivery_package_id NUMBER,
  delivery_id         NUMBER,
  package_id          NUMBER,

  CONSTRUCTOR FUNCTION ty_delivery_package RETURN SELF AS RESULT
)
/
CREATE OR REPLACE TYPE BODY ty_delivery_package IS

  CONSTRUCTOR FUNCTION ty_delivery_package RETURN SELF AS RESULT IS
  BEGIN
    RETURN;
  END;

END;
/
