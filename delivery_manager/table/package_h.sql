CREATE TABLE package_h(
  package_id        NUMBER
 ,sender_id         NUMBER
 ,recipient_id      NUMBER
 ,weight            NUMBER
 ,send_date         DATE
 ,mod_user          varchar2(300)
 ,created           timestamp
 ,last_mod          timestamp
 ,dml_flag          varchar2(1)
 ,VERSION           number
) 
TABLESPACE users;
