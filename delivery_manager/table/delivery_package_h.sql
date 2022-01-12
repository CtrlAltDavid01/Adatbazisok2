CREATE TABLE delivery_package_h(
  delivery_id                 NUMBER
 ,package_id                  NUMBER
 ,mod_user                    varchar2(300)
 ,created                     timestamp
 ,last_mod                    timestamp
 ,dml_flag                    varchar2(1)
 ,VERSION                     number
) 
TABLESPACE users;
