PROMPT Installing DB...

-- Esetleg instlall logol�s

-- Install sequences
PROMPT Installing sequences

@./sequence/person_seq.sql
@./sequence/vehicle_seq.sql
@./sequence/package_seq.sql
@./sequence/delivery_seq.sql
@./sequence/delivery_package_seq.sql

-- Install tables
PROMPT Installing tables

@./table/person.sql
@./table/person_h.sql

@./table/vehicle.sql
@./table/vehicle_h.sql

@./table/package.sql
@./table/package_h.sql

@./table/delivery.sql
@./table/delivery_h.sql

@./table/delivery_package.sql
@./table/delivery_package_h.sql

-- Install types

-- Packages

-- Views
@./view/package_traffic.sql

-- Triggers
PROMPT Installing triggers

@./trigger/person_trg.trg
@./trigger/person_h_trg.trg

@./trigger/vehicle_trg.trg
@./trigger/vehicle_h_trg.trg

@./trigger/package_trg.trg
@./trigger/package_h_trg.trg

@./trigger/delivery_trg.trg
@./trigger/delivery_h_trg.trg

@./trigger/delivery_package_trg.trg
@./trigger/delivery_package_h_trg.trg

-- Recompile schema
BEGIN
  dbms_utility.compile_schema(schema => 'DELIVERY_MANAGER');
END;
/

-- FK
PROMPT Installing foreign keys

@./fk/package_fk.sql
@./fk/delivery_fk.sql
@./fk/delivery_package_fk.sql

-- Table data
PROMPT Filling db width data

@./table_data/person_data.sql
@./table_data/vehicle_data.sql
@./table_data/package_data.sql
@./table_data/delivery_data.sql
@./table_data/delivery_package_data.sql

COMMIT;

PROMPT Done.
