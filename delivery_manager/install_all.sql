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
@./package/pkg_exception.spc

-- Functions
PROMPT Installing functions

@./function/sent_packages.fnc
@./function/received_packages.fnc

-- Views
PROMPT Installing views

@./view/package_traffic.sql
@./view/human_readable_packages.sql
@./view/all_package_info.sql
@./view/delivery_weight.sql
@./view/waiting_for_delivery_package.sql
@./view/employee_names.sql
@./view/employee_sent_packages.sql
@./view/employee_received_packages.sql

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
@./trigger/delivery_driver_is_empl_trg.trg

@./trigger/delivery_package_trg.trg
@./trigger/delivery_package_h_trg.trg

-- Recompile schema
BEGIN
  dbms_utility.compile_schema(schema => 'DELIVERY_MANAGER');
END;
/

-- FK
PROMPT Installing foreign keys

@./alter/person_alter.sql
@./alter/package_alter.sql
@./alter/delivery_alter.sql
@./alter/delivery_package_alter.sql

-- Table data
PROMPT Filling db width data

@./table_data/person_data.sql
@./table_data/vehicle_data.sql
@./table_data/package_data.sql
@./table_data/delivery_data.sql
@./table_data/delivery_package_data.sql

COMMIT;

PROMPT Done.
