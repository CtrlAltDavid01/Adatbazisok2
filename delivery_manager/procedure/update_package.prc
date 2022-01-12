CREATE OR REPLACE PROCEDURE update_package(p_package_id   NUMBER
                                          ,p_sender_id    NUMBER
                                          ,p_recipient_id NUMBER
                                          ,p_weight       NUMBER
                                          ,p_send_date    DATE) IS
  v_package PACKAGE%ROWTYPE;
BEGIN
  BEGIN
    SELECT *
      INTO v_package
      FROM PACKAGE p
     WHERE p.package_id = p_package_id;
  EXCEPTION
    WHEN no_data_found THEN
      raise_application_error(pkg_exception.gc_no_package_exc_code,
                              'No package to update!');
  END;

  IF p_sender_id IS NOT NULL
  THEN
    v_package.sender_id := p_sender_id;
  END IF;

  IF p_recipient_id IS NOT NULL
  THEN
    v_package.recipient_id := p_recipient_id;
  END IF;

  IF p_weight IS NOT NULL
  THEN
    v_package.weight := p_weight;
  END IF;

  IF p_send_date IS NOT NULL
  THEN
    v_package.send_date := p_send_date;
  END IF;

  UPDATE PACKAGE p
     SET p.sender_id    = v_package.sender_id
        ,p.recipient_id = v_package.recipient_id
        ,p.weight       = v_package.weight
        ,p.send_date    = v_package.send_date
   WHERE p.package_id = p_package_id;
END update_package;
/
