CREATE OR REPLACE FUNCTION select_vehicle(p_vehicle_id NUMBER)
  RETURN ty_vehicle IS
  res ty_vehicle;
BEGIN
  res := ty_vehicle();

  SELECT v.vehicle_id
        ,v.type
        ,v.purchase_date
        ,v.mileage
        ,v.load_capacity
        ,v.license_plate
    INTO res.vehicle_id
        ,res.type
        ,res.purchase_date
        ,res.mileage
        ,res.load_capacity
        ,res.license_plate
    FROM vehicle v
   WHERE v.vehicle_id = p_vehicle_id;

  RETURN(res);
END select_vehicle;
/
