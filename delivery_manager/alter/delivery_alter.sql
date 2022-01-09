ALTER TABLE delivery
  ADD CONSTRAINT vehicle_fk FOREIGN KEY (vehicle_id) REFERENCES vehicle(vehicle_id);
  
ALTER TABLE delivery
  ADD CONSTRAINT driver_fk FOREIGN KEY (driver_id) REFERENCES person(person_id);
