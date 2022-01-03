CREATE OR REPLACE view package_traffic as
SELECT p.first_name || ' ' || p.last_name AS NAME
      ,sent_packages(p.person_id) as sent_packages
      ,received_packages(p.person_id) as received_packages
  FROM person p;
