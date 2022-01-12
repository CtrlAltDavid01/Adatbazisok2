CREATE OR REPLACE PROCEDURE insert_vehicle(p_type          VARCHAR2(50)
                                          ,p_purchase_date DATE
                                          ,p_mileage       NUMBER(10, 1)
                                          ,p_load_capacity NUMBER(10)
                                          ,p_license_plate VARCHAR2(10)) IS
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
