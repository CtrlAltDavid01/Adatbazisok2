CREATE OR REPLACE PROCEDURE delete_package(p_package_id NUMBER) IS
BEGIN
  DELETE FROM PACKAGE p WHERE p.package_id = p_package_id;
END delete_package;
/
