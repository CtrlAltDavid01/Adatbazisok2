create or replace function select_deliveries return ty_delivery_list is
  res ty_delivery_list;
begin
  res := ty_delivery_list();
  
  FOR i IN (SELECT * FROM delivery d)
  LOOP
    res.extend(1);
    res(res.count) := ty_delivery(delivery_id   => i.delivery_id,
                                  vehicle_id    => i.vehicle_id,
                                  driver_id     => i.driver_id,
                                  delivery_date => i.delivery_date);
  END LOOP;
  
  return(res);
end select_deliveries;
/
