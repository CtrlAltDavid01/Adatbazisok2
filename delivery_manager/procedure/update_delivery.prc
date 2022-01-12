CREATE OR REPLACE PROCEDURE update_delivery(p_delivery_id   NUMBER
                                           ,p_vehicle_id    NUMBER
                                           ,p_driver_id     NUMBER
                                           ,p_delivery_date DATE) IS
  v_delivery delivery%ROWTYPE;
BEGIN
  BEGIN
    SELECT *
      INTO v_delivery
      FROM delivery d
     WHERE d.delivery_id = p_delivery_id;
  EXCEPTION
    WHEN no_data_found THEN
      raise_application_error(pkg_exception.gc_no_person_exc_code,
                              'No person to update!');
  END;

  IF p_vehicle_id IS NOT NULL
  THEN
    v_delivery.vehicle_id := p_vehicle_id;
  END IF;

  IF p_driver_id IS NOT NULL
  THEN
    v_delivery.driver_id := p_driver_id;
  END IF;

  IF p_delivery_date IS NOT NULL
  THEN
    v_delivery.delivery_date := p_delivery_date;
  END IF;

  UPDATE delivery d
     SET d.vehicle_id    = v_delivery.vehicle_id
        ,d.driver_id     = v_delivery.driver_id
        ,d.delivery_date = v_delivery.delivery_date
   WHERE d.delivery_id = p_delivery_id;
END update_delivery;
/
