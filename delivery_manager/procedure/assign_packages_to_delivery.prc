CREATE OR REPLACE PROCEDURE assign_packages_to_delivery(p_delivery_id NUMBER) IS
  v_delivery_date delivery.delivery_date%TYPE;

  TYPE package_id_list IS TABLE OF package.package_id%TYPE INDEX BY PLS_INTEGER;
  packages_to_assign package_id_list;
BEGIN
  BEGIN
    SELECT d.delivery_date
      INTO v_delivery_date
      FROM delivery d
     WHERE d.delivery_id = p_delivery_id;
  EXCEPTION
    WHEN no_data_found THEN
      raise_application_error(pkg_exception.gc_no_delivery_exc_code,
                              'Delivery with id ' || p_delivery_id ||
                              ' doesn''t exist!');
  END;

  SELECT p.package_id
    BULK COLLECT
    INTO packages_to_assign
    FROM PACKAGE p
   WHERE p.package_id NOT IN
         (SELECT dp.package_id FROM delivery_package dp)
     AND p.send_date < v_delivery_date;

  IF packages_to_assign.COUNT = 0 THEN
    raise_application_error(pkg_exception.gc_no_package_exc_code,
                              'No packages to assign!');
  END IF;

  FOR i IN packages_to_assign.first .. packages_to_assign.last
  LOOP
    INSERT INTO delivery_package
      (delivery_id
      ,package_id)
    VALUES
      (p_delivery_id
      ,packages_to_assign(i));
  END LOOP;
END assign_packages_to_delivery;
/
