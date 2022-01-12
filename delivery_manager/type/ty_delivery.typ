CREATE OR REPLACE TYPE ty_delivery AS OBJECT
(
  delivery_id   NUMBER,
  vehicle_id    NUMBER,
  driver_id     NUMBER,
  delivery_date DATE,

  CONSTRUCTOR FUNCTION ty_delivery RETURN SELF AS RESULT
)
/
CREATE OR REPLACE TYPE BODY ty_delivery IS

  CONSTRUCTOR FUNCTION ty_delivery RETURN SELF AS RESULT IS
  BEGIN
    RETURN;
  END;

END;
/
