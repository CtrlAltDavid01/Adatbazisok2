CREATE TABLE delivery(
  delivery_id       NUMBER         NOT NULL PRIMARY KEY
 ,vehicle_id        NUMBER         NOT NULL
 ,driver_id         NUMBER         NOT NULL
 ,delivery_date     DATE           NOT NULL
 ,mod_user          varchar2(300)  ------------------------
 ,created           timestamp      DEFAULT SYSDATE NOT NULL
 ,last_mod          timestamp      DEFAULT SYSDATE NOT NULL
 ,dml_flag          varchar2(1)
 ,VERSION           number
) 
TABLESPACE users;
