CREATE OR REPLACE PROCEDURE update_vehicle(p_vehicle_id    NUMBER
                                          ,p_type          VARCHAR2
                                          ,p_mileage       NUMBER
                                          ,p_license_plate VARCHAR2) IS
  v_vehicle vehicle%ROWTYPE;
BEGIN
  BEGIN
    SELECT *
      INTO v_vehicle
      FROM vehicle v
     WHERE v.vehicle_id = p_vehicle_id;
  EXCEPTION
    WHEN no_data_found THEN
      raise_application_error(pkg_exception.gc_no_vehicle_exc_code,
                              'No vehicle to update!');
  END;

  IF p_type IS NOT NULL
  THEN
    v_vehicle.type := p_type;
  END IF;

  IF p_mileage IS NOT NULL
  THEN
    v_vehicle.mileage := p_mileage;
  END IF;

  IF p_license_plate IS NOT NULL
  THEN
    v_vehicle.license_plate := p_license_plate;
  END IF;

  UPDATE vehicle v
     SET v.type          = v_vehicle.type
        ,v.mileage       = v_vehicle.mileage
        ,v.license_plate = v_vehicle.license_plate
   WHERE v.vehicle_id = p_vehicle_id;
END update_vehicle;
/
