create or replace view all_package_info as 
SELECT p.package_id
      ,s.person_id AS sender_id
      ,s.first_name || ' ' || s.last_name AS sender_name
      ,r.person_id AS recipient_id
      ,r.first_name || ' ' || r.last_name AS recipient_name
      ,weight || ' kg' AS package_weight
      ,send_date
      ,d.delivery_id
      ,d.delivery_date
      ,c.person_id AS carrier_id
      ,c.first_name || ' ' || c.last_name AS carrier_name
      ,v.vehicle_id AS carrier_vehicle_id
      ,v.type AS carrier_vehicle_type
  FROM PACKAGE p
  JOIN person s
    ON p.sender_id = s.person_id
  JOIN person r
    ON p.recipient_id = r.person_id
  LEFT JOIN delivery_package dp
    ON dp.package_id = p.package_id
  LEFT JOIN delivery d
    ON dp.delivery_id = d.delivery_id
  LEFT JOIN person c
    ON d.driver_id = c.person_id
  LEFT JOIN vehicle v
    ON d.vehicle_id = v.vehicle_id
 ORDER BY p.package_id;
