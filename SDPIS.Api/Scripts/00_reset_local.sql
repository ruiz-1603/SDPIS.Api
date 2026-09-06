-- =====================================================
-- 00_reset_local.sql
-- Borra TODOS los objetos de tu esquema/usuario local de Oracle
-- para poder recargar todo desde cero, en el orden correcto.
-- Solo usar en tu base LOCAL de desarrollo. No ejecutar contra
-- ninguna base compartida ni de otro compañero.
-- =====================================================

BEGIN
  FOR t IN (SELECT table_name FROM user_tables) LOOP
    EXECUTE IMMEDIATE 'DROP TABLE "' || t.table_name || '" CASCADE CONSTRAINTS PURGE';
  END LOOP;
END;
/

BEGIN
  FOR p IN (SELECT object_name FROM user_procedures WHERE object_type = 'PROCEDURE') LOOP
    EXECUTE IMMEDIATE 'DROP PROCEDURE "' || p.object_name || '"';
  END LOOP;
END;
/

-- Las secuencias/identity y los triggers ligados a las tablas
-- se eliminan solos al hacer DROP TABLE ... CASCADE CONSTRAINTS.

COMMIT;
