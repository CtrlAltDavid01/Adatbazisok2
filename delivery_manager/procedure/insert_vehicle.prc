CREATE OR REPLACE PROCEDURE insert_vehicle(p_type          VARCHAR2
                                          ,p_purchase_date DATE
                                          ,p_mileage       NUMBER
                                          ,p_load_capacity NUMBER
                                          ,p_license_plate VARCHAR2) IS
BEGIN
  INSERT INTO vehicle
    (TYPE
    ,purchase_date
    ,mileage
    ,load_capacity
    ,license_plate)
  VALUES
    (p_type
    ,p_purchase_date
    ,p_mileage
    ,p_load_capacity
    ,p_license_plate);
END insert_vehicle;
/
