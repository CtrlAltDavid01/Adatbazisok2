CREATE OR REPLACE FUNCTION select_delivery(p_delivery_id NUMBER)
  RETURN ty_delivery IS
  res ty_delivery;
BEGIN
  res := ty_delivery();

  SELECT d.delivery_id
        ,d.vehicle_id
        ,d.driver_id
        ,d.delivery_date
    INTO res.delivery_id
        ,res.vehicle_id
        ,res.driver_id
        ,res.delivery_date
    FROM delivery d
   WHERE d.delivery_id = p_delivery_id;

  RETURN(res);
END select_delivery;
/
