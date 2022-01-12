CREATE OR REPLACE FUNCTION select_package(p_package_id NUMBER)
  RETURN ty_package IS
  res ty_package;
BEGIN
  res := ty_package();

  SELECT p.package_id
        ,p.sender_id
        ,p.recipient_id
        ,p.weight
        ,p.send_date
    INTO res.package_id
        ,res.sender_id
        ,res.recipient_id
        ,res.weight
        ,res.send_date
    FROM PACKAGE p
   WHERE p.package_id = p_package_id;

  RETURN(res);
END select_package;
/
