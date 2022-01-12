CREATE OR REPLACE FUNCTION packages_delivered_by_vehicle(p_vehicle_id NUMBER)
  RETURN NUMBER IS
  package_count NUMBER;
  BEGIN
    SELECT COUNT(*)
      INTO package_count
      FROM delivery_package dp
      JOIN delivery d
        ON dp.delivery_id = d.delivery_id
      JOIN vehicle v
        ON d.vehicle_id = v.vehicle_id
     WHERE v.vehicle_id = p_vehicle_id;
  EXCEPTION
    WHEN no_data_found THEN
      raise_application_error(pkg_exception.gc_no_vehicle_exc_code,
                              'No vehicle found with id ' || p_vehicle_id || '!');
  END;

  RETURN(package_count);
END packages_delivered_by_vehicle;
/
