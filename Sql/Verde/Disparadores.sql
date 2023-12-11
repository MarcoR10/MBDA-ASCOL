--





-- Crear un disparador que se ejecuta antes de INSERT o UPDATE en ubicaciones
CREATE OR REPLACE TRIGGER before_insert_or_update_ubicaciones
BEFORE INSERT OR UPDATE ON ubicaciones
FOR EACH ROW
BEGIN
  -- Convertir la ciudad a mayúsculas antes de la inserción o actualización
  :NEW.ciudad := UPPER(:NEW.ciudad);
END;
/
--DISPARADOR OK
-- Inserción de una nueva ubicación con ciudad en minúsculas
INSERT INTO ubicaciones (direccion, ciudad, departamento)
VALUES ('AMA#KMS-2', 'cincinnati', 'Ohio');

-- Actualización de la ciudad de una ubicación existente
UPDATE ubicaciones SET ciudad = 'Bogotá' WHERE direccion = 'AMA#KMS-2';

--disparadorNOK
-- Intento de inserción con nombre de ciudad que contiene números
INSERT INTO ubicaciones (direccion, ciudad, departamento)
VALUES ('AMA#KMS-3', 'Los Angeles123', 'California');

---XDisparadores
-- Eliminar el disparador before_insert_or_update_ubicaciones
DROP TRIGGER before_insert_or_update_ubicaciones;
