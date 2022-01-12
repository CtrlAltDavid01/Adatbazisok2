CREATE OR REPLACE PROCEDURE insert_package(p_sender_id    NUMBER
                                          ,p_recipient_id NUMBER
                                          ,p_weight       NUMBER
                                          ,p_send_date    DATE) IS
BEGIN
  INSERT INTO PACKAGE
    (sender_id
    ,recipient_id
    ,weight
    ,send_date)
  VALUES
    (p_sender_id
    ,p_recipient_id
    ,p_weight
    ,p_send_date);
END insert_package;
/
