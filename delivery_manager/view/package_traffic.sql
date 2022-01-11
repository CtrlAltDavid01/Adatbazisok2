CREATE OR REPLACE VIEW package_traffic AS
SELECT p.first_name || ' ' || p.last_name AS NAME
      ,sent_packages(p.person_id) AS sent_packages
      ,received_packages(p.person_id) AS received_packages
  FROM person p;
