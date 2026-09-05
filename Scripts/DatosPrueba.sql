INSERT INTO region (nombre) VALUES ('Central');

INSERT INTO area (nombre, tipo, codigo_area, region_id)
VALUES ('Área Rectora San José Centro', 'AR', 'ARSJ', 1);

INSERT INTO provincia (nombre) VALUES ('San José');

INSERT INTO canton (provincia_id, nombre, tiene_distrito)
VALUES (1, 'San José', 'N');

INSERT INTO ubicacion_area (canton_id, distrito_id, area_id)
VALUES (1, NULL, 1);

INSERT INTO tipo_producto (nombre) VALUES ('Medicamento');
INSERT INTO motivo_denuncia (nombre) VALUES ('Producto sin registro sanitario');

COMMIT;