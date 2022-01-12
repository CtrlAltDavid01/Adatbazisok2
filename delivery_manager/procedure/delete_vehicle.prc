CREATE OR REPLACE PROCEDURE delete_vehicle(p_vehicle_id NUMBER) IS
BEGIN
  DELETE FROM vehicle v WHERE v.vehicle_id = p_vehicle_id;
END delete_vehicle;
/
