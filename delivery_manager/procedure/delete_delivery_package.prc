CREATE OR REPLACE PROCEDURE delete_delivery_package(p_delivery_package_id NUMBER) IS
BEGIN
  DELETE FROM delivery_package dp
   WHERE dp.delivery_package_id = p_delivery_package_id;
END delete_delivery_package;
/
