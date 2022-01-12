CREATE OR REPLACE PROCEDURE insert_delivery_package(p_delivery_id NUMBER
                                                   ,p_package_id  NUMBER) IS
BEGIN
  INSERT INTO delivery_package
    (delivery_id
    ,package_id)
  VALUES
    (p_delivery_id
    ,p_package_id);
END insert_delivery_package;
/
