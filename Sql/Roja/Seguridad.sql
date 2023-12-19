---Seguridad---
-- Crear roles para Presidente, Medico y Arbitro
CREATE ROLE PRESIDENTE;
CREATE ROLE MEDICO;
CREATE ROLE ARBITRO;

-- Asignar permisos a roles para tablas
GRANT SELECT, INSERT, UPDATE, DELETE ON Jugador TO PRESIDENTE;
GRANT SELECT, INSERT, UPDATE ON Evaluacion TO MEDICO;
GRANT SELECT, INSERT, UPDATE ON Eventos_Partido TO ARBITRO;

-- Asignar permisos a roles para procedimientos
GRANT EXECUTE ON PC_PRESIDENTE TO PRESIDENTE;
GRANT EXECUTE ON PC_MEDICO TO MEDICO;
GRANT EXECUTE ON PC_ARBITRO TO ARBITRO;

-- Asignar roles a usuarios ---
GRANT Presidente TO usuario_presidente;
GRANT Medico TO usuario_medico;
GRANT Arbitro TO usuario_arbitro;


