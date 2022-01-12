CREATE OR REPLACE TYPE ty_package AS OBJECT
(
  package_id   NUMBER,
  sender_id    NUMBER,
  recipient_id NUMBER,
  weight       NUMBER,
  send_date    DATE,

  CONSTRUCTOR FUNCTION ty_package RETURN SELF AS RESULT
)
/
CREATE OR REPLACE TYPE BODY ty_package IS

  CONSTRUCTOR FUNCTION ty_package RETURN SELF AS RESULT IS
  BEGIN
    RETURN;
  END;

END;
/
