CREATE TABLE vehicle_h(
  vehicle_id        NUMBER
 ,type              VARCHAR2(50)
 ,purchase_date     DATE
 ,mileage           number(10,1)
 ,load_capacity     number(10)
 ,license_plate     varchar2(10)
 ,mod_user          varchar2(300)
 ,last_mod          timestamp
 ,created           timestamp
 ,dml_flag          varchar2(1)
 ,VERSION           number
)
TABLESPACE users;
