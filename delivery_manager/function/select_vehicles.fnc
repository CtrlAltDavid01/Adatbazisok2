create or replace function select_vehicles return ty_vehicle_list is
  res ty_vehicle_list;
begin
  res := ty_vehicle_list();
  
  FOR i IN (SELECT * FROM vehicle v)
  LOOP
    res.extend(1);
    res(res.count) := ty_vehicle(vehicle_id    => i.vehicle_id,
                                 TYPE          => i.type,
                                 purchase_date => i.purchase_date,
                                 mileage       => i.mileage,
                                 load_capacity => i.load_capacity,
                                 license_plate => i.license_plate);
  END LOOP;
  
  return(res);
end select_vehicles;
/
