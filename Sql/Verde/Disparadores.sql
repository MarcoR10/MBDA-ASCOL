--





-- Crear un disparador que se ejecuta antes de INSERT o UPDATE en ubicaciones
CREATE OR REPLACE TRIGGER before_insert_or_update_ubicaciones
BEFORE INSERT OR UPDATE ON ubicaciones
FOR EACH ROW
BEGIN
  -- Convertir la ciudad a may�sculas antes de la inserci�n o actualizaci�n
  :NEW.ciudad := UPPER(:NEW.ciudad);
END;
/
--DISPARADOR OK
-- Inserci�n de una nueva ubicaci�n con ciudad en min�sculas
INSERT INTO ubicaciones (direccion, ciudad, departamento)
VALUES ('AMA#KMS-2', 'cincinnati', 'Ohio');

-- Actualizaci�n de la ciudad de una ubicaci�n existente
UPDATE ubicaciones SET ciudad = 'Bogot�' WHERE direccion = 'AMA#KMS-2';

--disparadorNOK
-- Intento de inserci�n con nombre de ciudad que contiene n�meros
INSERT INTO ubicaciones (direccion, ciudad, departamento)
VALUES ('AMA#KMS-3', 'Los Angeles123', 'California');

---XDisparadores
-- Eliminar el disparador before_insert_or_update_ubicaciones
DROP TRIGGER before_insert_or_update_ubicaciones;
