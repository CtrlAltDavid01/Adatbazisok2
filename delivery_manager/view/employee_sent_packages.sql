CREATE OR REPLACE VIEW employee_sent_packages AS
SELECT p.package_id,
       p.sender_id,
       p.recipient_id,
       p.weight,
       p.send_date
  FROM PACKAGE p
  JOIN person s
    ON p.sender_id = s.person_id
 WHERE s.is_employee = 'Y'
