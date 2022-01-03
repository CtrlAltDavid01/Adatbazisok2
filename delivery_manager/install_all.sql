PROMPT Installing DB...

-- Esetleg instlall logolás

-- Install sequences

-- Install tables
PROMPT Installing tables

@./table/person.sql
@./table/vehicle.sql
@./table/package.sql
@./table/delivery.sql
@./table/delivery_package.sql

-- Install types

-- Packages

-- Views

-- Triggers

-- Recompile schema
BEGIN
  dbms_utility.compile_schema(schema => 'DELIVERY_MANAGER');
END;
/

-- FK

-- Table data

COMMIT;

PROMPT Done.
