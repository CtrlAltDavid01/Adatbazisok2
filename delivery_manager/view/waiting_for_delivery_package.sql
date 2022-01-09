CREATE OR REPLACE VIEW waiting_for_delivery_package AS
SELECT *
  FROM PACKAGE pa
 WHERE pa.package_id NOT IN
       (SELECT p.package_id
          FROM PACKAGE p
          JOIN delivery_package dp
            ON p.package_id = dp.package_id);
