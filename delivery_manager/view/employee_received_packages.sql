CREATE OR REPLACE VIEW employee_received_packages AS
SELECT p.package_id,
       p.sender_id,
       p.recipient_id,
       p.weight,
       p.send_date
  FROM PACKAGE p
  JOIN person r
    ON p.recipient_id = r.person_id
 WHERE r.is_employee = 'Y'
