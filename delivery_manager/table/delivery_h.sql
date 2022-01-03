CREATE TABLE delivery_h(
  delivery_id       NUMBER
 ,vehicle_id        NUMBER
 ,driver_id         NUMBER
 ,delivery_date     DATE
 ,mod_user          varchar2(300)
 ,created           timestamp
 ,last_mod          timestamp
 ,dml_flag          varchar2(1)
 ,VERSION           number
) 
TABLESPACE users;
