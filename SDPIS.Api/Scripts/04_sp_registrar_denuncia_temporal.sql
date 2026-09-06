-- =====================================================
-- 04_sp_registrar_denuncia_temporal.sql
-- Version TEMPORAL de sp_registrar_denuncia: si no encuentra
-- area por ubicacion (porque HU-008 aun no esta lista), usa
-- el area 'TEMP' en vez de lanzar ORA-20008.
-- Ejecutar DESPUES de 03_catalogo_minimo.sql (necesita que
-- exista el area con codigo_area = 'TEMP').
-- TODO(HU-008): quitar este fallback (paso 3, mas abajo) cuando
-- exista el import real del Excel de ubicacion_area y el matching
-- definitivo.
-- =====================================================

CREATE OR REPLACE PROCEDURE sp_registrar_denuncia (
  p_denuncia_json      IN  CLOB,
  p_codigo_seguimiento IN  VARCHAR2,
  p_id_denuncia        OUT NUMBER,
  p_consecutivo        OUT VARCHAR2
)
IS
  v_anio_actual NUMBER(4) := EXTRACT(YEAR FROM SYSDATE);

  -- datos del hecho
  v_denunciado_otra_institucion     denuncia_hecho.denunciado_otra_institucion%TYPE;
  v_detalle_otra_institucion        denuncia_hecho.detalle_otra_institucion%TYPE;
  v_denunciado_previamente_minsalud denuncia_hecho.denunciado_previamente_minsalud%TYPE;
  v_detalle_previo_minsalud         denuncia_hecho.detalle_previo_minsalud%TYPE;
  v_nombre_establecimiento          denuncia_hecho.nombre_establecimiento%TYPE;
  v_descripcion_hecho               denuncia_hecho.descripcion_hecho%TYPE;

  -- ubicacion
  v_canton_id        canton.id_canton%TYPE;
  v_distrito_id      distrito.id_distrito%TYPE;
  v_direccion_exacta denuncia_ubicacion.direccion_exacta%TYPE;

  -- privacidad / denunciante (ya validados por Backend)
  v_es_anonima         denuncia_denunciante.es_anonima%TYPE;
  v_den_nombre         denunciante.nombre%TYPE;
  v_den_numero_id      denunciante.numero_identificacion%TYPE;
  v_den_correo         denunciante.correo%TYPE;
  v_den_telefono       denunciante.telefono%TYPE;
  v_den_direccion      denuncia_denunciante.direccion_domicilio%TYPE;
  v_denunciante_id     denunciante.id_denunciante%TYPE;

  -- area / consecutivo
  v_area_id           area.id_area%TYPE;
  v_codigo_area       area.codigo_area%TYPE;
  v_numero_secuencial denuncia.numero_secuencial%TYPE;

  v_id_detalle_producto detalle_producto.id_detalle_producto%TYPE;

BEGIN
  ----------------------------------------------------------------
  -- 0. guarda tecnica de la interfaz (no es validacion de negocio)
  ----------------------------------------------------------------
  IF p_denuncia_json IS NULL OR NOT p_denuncia_json IS JSON THEN
    RAISE_APPLICATION_ERROR(-20000, 'El payload de la denuncia no es un JSON valido.');
  END IF;

  ----------------------------------------------------------------
  -- 1. leer campos escalares del JSON (ya validados/normalizados por Backend)
  ----------------------------------------------------------------
  SELECT jt.denunciado_otra_institucion,
         jt.detalle_otra_institucion,
         jt.denunciado_previamente_minsalud,
         jt.detalle_previo_minsalud,
         jt.nombre_establecimiento,
         jt.descripcion_hecho,
         jt.canton_id,
         jt.distrito_id,
         jt.direccion_exacta,
         jt.es_anonima,
         jt.denunciante_nombre,
         jt.denunciante_numero_identificacion,
         jt.denunciante_correo,
         jt.denunciante_telefono,
         jt.denunciante_direccion_domicilio
    INTO v_denunciado_otra_institucion,
         v_detalle_otra_institucion,
         v_denunciado_previamente_minsalud,
         v_detalle_previo_minsalud,
         v_nombre_establecimiento,
         v_descripcion_hecho,
         v_canton_id,
         v_distrito_id,
         v_direccion_exacta,
         v_es_anonima,
         v_den_nombre,
         v_den_numero_id,
         v_den_correo,
         v_den_telefono,
         v_den_direccion
    FROM JSON_TABLE(
      p_denuncia_json, '$'
      COLUMNS (
        denunciado_otra_institucion      CHAR(1)       PATH '$.hecho.denunciado_otra_institucion',
        detalle_otra_institucion         VARCHAR2(500) PATH '$.hecho.detalle_otra_institucion',
        denunciado_previamente_minsalud  CHAR(1)       PATH '$.hecho.denunciado_previamente_minsalud',
        detalle_previo_minsalud          VARCHAR2(500) PATH '$.hecho.detalle_previo_minsalud',
        nombre_establecimiento           VARCHAR2(200) PATH '$.hecho.nombre_establecimiento',
        descripcion_hecho                VARCHAR2(4000) PATH '$.hecho.descripcion_hecho',
        canton_id                        NUMBER        PATH '$.ubicacion.canton_id',
        distrito_id                      NUMBER        PATH '$.ubicacion.distrito_id',
        direccion_exacta                 VARCHAR2(500) PATH '$.ubicacion.direccion_exacta',
        es_anonima                       CHAR(1)       PATH '$.privacidad.es_anonima',
        denunciante_nombre               VARCHAR2(150) PATH '$.privacidad.denunciante.nombre',
        denunciante_numero_identificacion VARCHAR2(30) PATH '$.privacidad.denunciante.numero_identificacion',
        denunciante_correo               VARCHAR2(150) PATH '$.privacidad.denunciante.correo',
        denunciante_telefono             VARCHAR2(20)  PATH '$.privacidad.denunciante.telefono',
        denunciante_direccion_domicilio  VARCHAR2(500) PATH '$.privacidad.denunciante.direccion_domicilio'
      )
    ) jt;

  ----------------------------------------------------------------
  -- 2. invariante de privacidad (garantia estructural, no validacion de formato)
  ----------------------------------------------------------------
  IF v_es_anonima = 'S' THEN
    v_den_nombre    := NULL;
    v_den_numero_id := NULL;
    v_den_correo    := NULL;
    v_den_telefono  := NULL;
    v_den_direccion := NULL;
  END IF;

  ----------------------------------------------------------------
  -- 3. resolver area (HU-009: busqueda deterministica).
  --    TEMPORAL (mientras HU-008 no este lista): si no hay match
  --    en ubicacion_area, usa el area 'TEMP' en vez de fallar,
  --    para no bloquear las pruebas de HU-002/004/005.
  --    TODO(HU-008): quitar este fallback cuando exista el import
  --    real del Excel de ubicacion_area y el matching definitivo.
  ----------------------------------------------------------------
  BEGIN
    SELECT area_id INTO v_area_id
    FROM ubicacion_area
    WHERE canton_id = v_canton_id
      AND NVL(distrito_id, -1) = NVL(v_distrito_id, -1)
      AND ROWNUM = 1;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      SELECT id_area INTO v_area_id FROM area WHERE codigo_area = 'TEMP';
  END;

  SELECT codigo_area INTO v_codigo_area FROM area WHERE id_area = v_area_id;

  ----------------------------------------------------------------
  -- 4. numero secuencial por area y anio (bloqueo por fila -> sin choques;
  --    reinicio anual: el filtro por anio hace que vuelva a 1 cada anio)
  ----------------------------------------------------------------
  UPDATE contador_denuncia_area
     SET ultimo_numero = ultimo_numero + 1
   WHERE area_id = v_area_id
     AND anio = v_anio_actual
  RETURNING ultimo_numero INTO v_numero_secuencial;

  IF SQL%ROWCOUNT = 0 THEN
    INSERT INTO contador_denuncia_area (area_id, anio, ultimo_numero)
    VALUES (v_area_id, v_anio_actual, 1);
    v_numero_secuencial := 1;
  END IF;

  p_consecutivo := v_codigo_area || '-' || TO_CHAR(v_anio_actual) || '-' ||
                   LPAD(v_numero_secuencial, 6, '0');

  ----------------------------------------------------------------
  -- 5. denuncia (anio_creacion ya NO va aqui: es columna virtual, se
  --    calcula sola desde fecha_creacion)
  ----------------------------------------------------------------
  INSERT INTO denuncia (consecutivo, numero_secuencial, area_actual_id)
  VALUES (p_consecutivo, v_numero_secuencial, v_area_id)
  RETURNING id_denuncia INTO p_id_denuncia;

  INSERT INTO denuncia_hecho (
    denuncia_id, nombre_establecimiento, descripcion_hecho,
    denunciado_otra_institucion, detalle_otra_institucion,
    denunciado_previamente_minsalud, detalle_previo_minsalud
  ) VALUES (
    p_id_denuncia, v_nombre_establecimiento, v_descripcion_hecho,
    v_denunciado_otra_institucion, v_detalle_otra_institucion,
    v_denunciado_previamente_minsalud, v_detalle_previo_minsalud
  );

  INSERT INTO denuncia_ubicacion (
    denuncia_id, canton_id, distrito_id, area_formulario_id, direccion_exacta
  ) VALUES (
    p_id_denuncia, v_canton_id, v_distrito_id, v_area_id, v_direccion_exacta
  );

  INSERT INTO denuncia_seguimiento (denuncia_id, codigo_seguimiento)
  VALUES (p_id_denuncia, p_codigo_seguimiento);

  ----------------------------------------------------------------
  -- 6. denunciante (solo si es confidencial)
  ----------------------------------------------------------------
  IF v_es_anonima = 'N' THEN
    INSERT INTO denunciante (nombre, numero_identificacion, correo, telefono)
    VALUES (v_den_nombre, v_den_numero_id, v_den_correo, v_den_telefono)
    RETURNING id_denunciante INTO v_denunciante_id;
  END IF;

  INSERT INTO denuncia_denunciante (denuncia_id, denunciante_id, es_anonima, direccion_domicilio)
  VALUES (p_id_denuncia, v_denunciante_id, v_es_anonima, v_den_direccion);

  ----------------------------------------------------------------
  -- 7. productos (uno o varios) y sus motivos
  ----------------------------------------------------------------
  FOR prod IN (
    SELECT jt.tipo_producto_id, jt.nombre_producto_texto,
           jt.registro_sanitario_ingresado, jt.descripcion_producto,
           jt.marca_ingresada, jt.numero_lote, jt.fabricante_ingresado,
           jt.pais_origen, jt.presentacion, jt.fecha_compra_txt, jt.motivos_json
    FROM JSON_TABLE(
      p_denuncia_json, '$.productos[*]'
      COLUMNS (
        tipo_producto_id              NUMBER        PATH '$.tipo_producto_id',
        nombre_producto_texto         VARCHAR2(200) PATH '$.nombre_producto_texto',
        registro_sanitario_ingresado  VARCHAR2(30)  PATH '$.registro_sanitario_ingresado',
        descripcion_producto          VARCHAR2(500) PATH '$.descripcion_producto',
        marca_ingresada               VARCHAR2(150) PATH '$.marca_ingresada',
        numero_lote                   VARCHAR2(50)  PATH '$.numero_lote',
        fabricante_ingresado          VARCHAR2(200) PATH '$.fabricante_ingresado',
        pais_origen                   VARCHAR2(100) PATH '$.pais_origen',
        presentacion                  VARCHAR2(100) PATH '$.presentacion',
        fecha_compra_txt              VARCHAR2(10)  PATH '$.fecha_compra',
        motivos_json                  VARCHAR2(4000) FORMAT JSON PATH '$.motivos'
      )
    ) jt
  )
  LOOP
    INSERT INTO detalle_producto (
      denuncia_id, tipo_producto_id, nombre_producto_texto,
      registro_sanitario_ingresado, descripcion_producto, marca_ingresada
    ) VALUES (
      p_id_denuncia, prod.tipo_producto_id, prod.nombre_producto_texto,
      prod.registro_sanitario_ingresado, prod.descripcion_producto, prod.marca_ingresada
    ) RETURNING id_detalle_producto INTO v_id_detalle_producto;

    INSERT INTO detalle_producto_compra (
      id_detalle_producto, numero_lote, fabricante_ingresado,
      pais_origen, presentacion, fecha_compra
    ) VALUES (
      v_id_detalle_producto, prod.numero_lote, prod.fabricante_ingresado,
      prod.pais_origen, prod.presentacion,
      CASE WHEN prod.fecha_compra_txt IS NOT NULL
           THEN TO_DATE(prod.fecha_compra_txt, 'YYYY-MM-DD') END
    );

    FOR mot IN (
      SELECT VALUE AS id_motivo
      FROM JSON_TABLE(prod.motivos_json, '$[*]' COLUMNS (VALUE NUMBER PATH '$'))
    )
    LOOP
      INSERT INTO detalle_producto_motivo (id_detalle_producto, id_motivo)
      VALUES (v_id_detalle_producto, mot.id_motivo);
    END LOOP;
  END LOOP;

  ----------------------------------------------------------------
  -- 8. bitacora (evento automatico, sin funcionario detras)
  ----------------------------------------------------------------
  INSERT INTO bitacora (denuncia_id, funcionario_id, area_origen_id, tipo_registro, contenido)
  VALUES (p_id_denuncia, NULL, v_area_id, 'accion_obligatoria',
          'Denuncia recibida y registrada automaticamente en el sistema.');

  COMMIT;

EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    RAISE;
END sp_registrar_denuncia;
/
