CREATE OR REPLACE PROCEDURE delete_delivery(p_delivery_id NUMBER) IS
BEGIN
  DELETE FROM delivery d WHERE d.delivery_id = p_delivery_id;
END delete_delivery;
/
