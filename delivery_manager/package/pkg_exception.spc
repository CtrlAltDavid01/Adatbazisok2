CREATE OR REPLACE PACKAGE pkg_exception IS

  person_not_empl_exc EXCEPTION;
  gc_person_not_empl_exc_code CONSTANT NUMBER := -20000;
  PRAGMA EXCEPTION_INIT(person_not_empl_exc, -20000);

END pkg_exception;
/
