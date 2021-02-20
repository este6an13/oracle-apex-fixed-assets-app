CREATE OR REPLACE TRIGGER procedimiento_on_insert
  BEFORE INSERT ON procedimiento
  FOR EACH ROW
BEGIN
  SELECT procedimiento_secuencia.nextval
  INTO :new.id_proce
  FROM dual;
END;