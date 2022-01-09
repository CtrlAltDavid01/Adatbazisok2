ALTER TABLE package
  ADD CONSTRAINT sender_fk FOREIGN KEY (sender_id) REFERENCES person(person_id);
  
ALTER TABLE package
  ADD CONSTRAINT recipient_fk FOREIGN KEY (recipient_id) REFERENCES person(person_id);
