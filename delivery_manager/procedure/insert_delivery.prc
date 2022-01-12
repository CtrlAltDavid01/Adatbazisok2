CREATE OR REPLACE PROCEDURE insert_delivery(p_vehicle_id    NUMBER
                                           ,p_driver_id     NUMBER
                                           ,p_delivery_date DATE) IS
BEGIN
  INSERT INTO delivery
    (vehicle_id
    ,driver_id
    ,delivery_date)
  VALUES
    (p_vehicle_id
    ,p_driver_id
    ,p_delivery_date);
END insert_delivery;
/
