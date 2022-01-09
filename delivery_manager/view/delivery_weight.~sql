CREATE OR REPLACE VIEW delivery_weight AS
SELECT d.delivery_id
      ,SUM(p.weight) || ' kg' AS weight
  FROM delivery d
  JOIN delivery_package dp
    ON d.delivery_id = dp.delivery_id
  JOIN PACKAGE p
    ON dp.package_id = p.package_id
 GROUP BY d.delivery_id;
