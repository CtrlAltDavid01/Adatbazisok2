CREATE OR REPLACE VIEW human_readable_packages AS
SELECT s.first_name || ' ' || s.last_name AS sender_name
      ,r.first_name || ' ' || r.last_name AS recipient_name
      ,weight || ' kg' AS package_weight
      ,send_date
  FROM PACKAGE p
  JOIN person s
    ON p.sender_id = s.person_id
  JOIN person r
    ON p.recipient_id = r.person_id
 ORDER BY send_date;
