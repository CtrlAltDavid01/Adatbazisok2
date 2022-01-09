ALTER TABLE delivery_package
  ADD CONSTRAINT delivery_fk FOREIGN KEY (delivery_id) REFERENCES delivery(delivery_id);
  
ALTER TABLE delivery_package
  ADD CONSTRAINT package_fk FOREIGN KEY (package_id) REFERENCES package(package_id);
