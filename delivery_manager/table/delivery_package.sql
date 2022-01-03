CREATE TABLE delivery_package(
  delivery_package_id        NUMBER         NOT NULL PRIMARY KEY
 ,delivery_id                 NUMBER         NOT NULL
 ,package_id                  NUMBER         NOT NULL UNIQUE
 ,mod_user                    varchar2(300)  ------------------------
 ,created                     timestamp      DEFAULT SYSDATE NOT NULL
 ,last_mod                    timestamp      DEFAULT SYSDATE NOT NULL
 ,dml_flag                    varchar2(1)
 ,VERSION                     number
) 
TABLESPACE users;
