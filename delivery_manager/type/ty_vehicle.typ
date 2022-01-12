CREATE OR REPLACE TYPE ty_vehicle AS OBJECT
(
  vehicle_id    NUMBER,
  type          VARCHAR2(50),
  purchase_date DATE,
  mileage       NUMBER(10, 1),
  load_capacity NUMBER(10),
  license_plate VARCHAR2(10),

  CONSTRUCTOR FUNCTION ty_vehicle RETURN SELF AS RESULT
)
/
CREATE OR REPLACE TYPE BODY ty_vehicle IS

  CONSTRUCTOR FUNCTION ty_vehicle RETURN SELF AS RESULT IS
  BEGIN
    RETURN;
  END;

END;
/
