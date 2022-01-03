CREATE TABLE package(
  package_id        NUMBER         NOT NULL PRIMARY KEY
 ,sender_id         NUMBER
 ,recipient_id      NUMBER         NOT NULL
 ,weight            NUMBER
 ,send_date         DATE
 ,mod_user          varchar2(300)  ------------------------
 ,created           timestamp      DEFAULT SYSDATE NOT NULL
 ,last_mod          timestamp      DEFAULT SYSDATE NOT NULL
 ,dml_flag          varchar2(1)
 ,VERSION           number
) 
TABLESPACE users;
