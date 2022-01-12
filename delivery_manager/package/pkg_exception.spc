CREATE OR REPLACE PACKAGE pkg_exception IS

  person_not_empl_exc EXCEPTION;
  gc_person_not_empl_exc_code CONSTANT NUMBER := -20000;
  PRAGMA EXCEPTION_INIT(person_not_empl_exc, -20000);

  mileage_not_valid_exc EXCEPTION;
  gc_mileage_not_valid_exc_code CONSTANT NUMBER := -20100;
  PRAGMA EXCEPTION_INIT(mileage_not_valid_exc, -20100);

  no_delivery_exc EXCEPTION;
  gc_no_delivery_exc_code CONSTANT NUMBER := -20200;
  PRAGMA EXCEPTION_INIT(no_delivery_exc, -20200);

  no_package_exc EXCEPTION;
  gc_no_package_exc_code CONSTANT NUMBER := -20300;
  PRAGMA EXCEPTION_INIT(no_package_exc, -20300);

  no_person_exc EXCEPTION;
  gc_no_person_exc_code CONSTANT NUMBER := -20400;
  PRAGMA EXCEPTION_INIT(no_person_exc, -20400);

  no_vehicle_exc EXCEPTION;
  gc_no_vehicle_exc_code CONSTANT NUMBER := -20500;
  PRAGMA EXCEPTION_INIT(no_vehicle_exc, -20500);

  no_delivery_pack_exc EXCEPTION;
  gc_no_delivery_pack_exc_code CONSTANT NUMBER := -20600;
  PRAGMA EXCEPTION_INIT(no_delivery_pack_exc, -20600);

END pkg_exception;
/
