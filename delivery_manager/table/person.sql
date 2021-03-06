CREATE TABLE person(
  person_id         NUMBER         NOT NULL PRIMARY KEY
 ,first_name        VARCHAR2(40)   NOT NULL
 ,last_name         VARCHAR2(40)   NOT NULL
 ,birth_date        DATE
 ,email             VARCHAR2(100)
 ,tel               VARCHAR2(20)
 ,loc_country_code  VARCHAR2(2)
 ,loc_city          VARCHAR2(100)
 ,loc_address       VARCHAR2(100)
 ,is_employee       CHAR(1)        NOT NULL
 ,mod_user          varchar2(300)  ------------------------
 ,created           timestamp      DEFAULT SYSDATE NOT NULL
 ,last_mod          timestamp      DEFAULT SYSDATE NOT NULL
 ,dml_flag          varchar2(1)
 ,VERSION           number
) 
TABLESPACE users;
