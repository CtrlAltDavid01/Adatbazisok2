CREATE OR REPLACE FUNCTION select_delivery_package(p_delivery_package_id NUMBER)
  RETURN ty_delivery_package IS
  res ty_delivery_package;
BEGIN
  res := ty_delivery_package();

  SELECT dp.delivery_package_id
        ,dp.delivery_id
        ,dp.package_id
    INTO res.delivery_package_id
        ,res.delivery_id
        ,res.package_id
    FROM delivery_package dp
   WHERE dp.delivery_package_id = p_delivery_package_id;

  RETURN(res);
END select_delivery_package;
/
