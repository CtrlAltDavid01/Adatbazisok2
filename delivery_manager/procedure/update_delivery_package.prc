CREATE OR REPLACE PROCEDURE update_delivery_package(p_delivery_package_id NUMBER
                                                   ,p_delivery_id         NUMBER
                                                   ,p_package_id          NUMBER) IS
  v_delivery_package delivery_package%ROWTYPE;
BEGIN
  BEGIN
    SELECT *
      INTO v_delivery_package
      FROM delivery_package dp
     WHERE dp.delivery_package_id = p_delivery_package_id;
  EXCEPTION
    WHEN no_data_found THEN
      raise_application_error(pkg_exception.gc_no_delivery_pack_exc_code,
                              'No delivery_package to update!');
  END;

  IF p_delivery_id IS NOT NULL
  THEN
    v_delivery_package.delivery_id := p_delivery_id;
  END IF;

  IF p_package_id IS NOT NULL
  THEN
    v_delivery_package.package_id := p_package_id;
  END IF;

  UPDATE delivery_package dp
     SET dp.delivery_id = v_delivery_package.delivery_id
        ,dp.package_id  = v_delivery_package.package_id
   WHERE dp.delivery_package_id = p_delivery_package_id;
END update_delivery_package;
/
