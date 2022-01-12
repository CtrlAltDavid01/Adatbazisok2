create or replace function select_delivery_packages return ty_delivery_package_list is
  res ty_delivery_package_list;
begin
  res := ty_delivery_package_list();
  
  FOR i IN (SELECT * FROM delivery_package dp)
  LOOP
    res.extend(1);
    res(res.count) := ty_delivery_package(delivery_package_id => i.delivery_package_id,
                                          delivery_id         => i.delivery_id,
                                          package_id          => i.package_id);
  END LOOP;
  
  return(res);
end select_delivery_packages;
/
