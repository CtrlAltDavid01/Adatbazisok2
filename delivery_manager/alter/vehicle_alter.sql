ALTER TABLE vehicle
  ADD CONSTRAINT mileage_constraint CHECK (mileage >= 0);
