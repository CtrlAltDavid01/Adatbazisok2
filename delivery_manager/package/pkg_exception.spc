CREATE OR REPLACE PACKAGE pkg_exception IS

  person_not_empl_exc EXCEPTION;
  gc_person_not_empl_exc_code CONSTANT NUMBER := -20000;
  PRAGMA EXCEPTION_INIT(person_not_empl_exc, -20000);
  
  no_delivery_exc EXCEPTION;
  gc_no_delivery_exc_code CONSTANT NUMBER := -20100;
  PRAGMA EXCEPTION_INIT(no_delivery_exc, -20100);
  
  no_package_exc EXCEPTION;
  gc_no_package_exc_code CONSTANT NUMBER := -20200;
  PRAGMA EXCEPTION_INIT(no_package_exc, -20200);

END pkg_exception;
/
