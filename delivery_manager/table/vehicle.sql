CREATE TABLE vehicle(
  vehicle_id        NUMBER         NOT NULL PRIMARY KEY
 ,type              VARCHAR2(50)   NOT NULL
 ,purchase_date     DATE
 ,mileage           number(10,1)
 ,load_capacity     number(10)
 ,license_plate     varchar2(10)
 ,mod_user          varchar2(300)  ------------------------
 ,created           timestamp      DEFAULT SYSDATE NOT NULL
 ,last_mod          timestamp      DEFAULT SYSDATE NOT NULL
 ,dml_flag          varchar2(1)
 ,VERSION           number
) 
TABLESPACE users;
