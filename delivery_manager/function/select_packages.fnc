create or replace function select_packages return ty_package_list is
  res ty_package_list;
begin
  res := ty_package_list();
  
  FOR i IN (SELECT * FROM package p)
  LOOP
    res.extend(1);
    res(res.count) := ty_package(package_id   => i.package_id,
                                 sender_id    => i.sender_id,
                                 recipient_id => i.recipient_id,
                                 weight       => i.weight,
                                 send_date    => i.send_date);
  END LOOP;
  
  return(res);
end select_packages;
/
