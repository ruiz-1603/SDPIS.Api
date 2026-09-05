
-- SEED: Ubicación geográfica (provincia, cantón, distrito)
-- Carga única / versionada. No ejecutar en ambientes ya poblados.


-- Provincias
INSERT INTO provincia (nombre) VALUES ('San José');
INSERT INTO provincia (nombre) VALUES ('Alajuela');
INSERT INTO provincia (nombre) VALUES ('Cartago');
INSERT INTO provincia (nombre) VALUES ('Heredia');
INSERT INTO provincia (nombre) VALUES ('Guanacaste');
INSERT INTO provincia (nombre) VALUES ('Puntarenas');
INSERT INTO provincia (nombre) VALUES ('Limón');

-- Cantones
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Central', 'S' FROM provincia WHERE nombre = 'San José';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Escazú', 'S' FROM provincia WHERE nombre = 'San José';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Desamparados', 'S' FROM provincia WHERE nombre = 'San José';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Puriscal', 'S' FROM provincia WHERE nombre = 'San José';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Tarrazú', 'S' FROM provincia WHERE nombre = 'San José';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Aserrí', 'S' FROM provincia WHERE nombre = 'San José';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Mora', 'S' FROM provincia WHERE nombre = 'San José';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Goicoechea', 'S' FROM provincia WHERE nombre = 'San José';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Santa Ana', 'S' FROM provincia WHERE nombre = 'San José';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Alajuelita', 'S' FROM provincia WHERE nombre = 'San José';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Vázquez de Coronado', 'S' FROM provincia WHERE nombre = 'San José';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Acosta', 'S' FROM provincia WHERE nombre = 'San José';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Tibás', 'S' FROM provincia WHERE nombre = 'San José';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Moravia', 'S' FROM provincia WHERE nombre = 'San José';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Montes de Oca', 'S' FROM provincia WHERE nombre = 'San José';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Turrubares', 'S' FROM provincia WHERE nombre = 'San José';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Dota', 'S' FROM provincia WHERE nombre = 'San José';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Curridabat', 'S' FROM provincia WHERE nombre = 'San José';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Pérez Zeledón', 'S' FROM provincia WHERE nombre = 'San José';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'León Cortés Castro', 'S' FROM provincia WHERE nombre = 'San José';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Central', 'S' FROM provincia WHERE nombre = 'Alajuela';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'San Ramón', 'S' FROM provincia WHERE nombre = 'Alajuela';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Grecia', 'S' FROM provincia WHERE nombre = 'Alajuela';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'San Mateo', 'S' FROM provincia WHERE nombre = 'Alajuela';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Atenas', 'S' FROM provincia WHERE nombre = 'Alajuela';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Naranjo', 'S' FROM provincia WHERE nombre = 'Alajuela';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Palmares', 'S' FROM provincia WHERE nombre = 'Alajuela';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Poás', 'S' FROM provincia WHERE nombre = 'Alajuela';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Orotina', 'S' FROM provincia WHERE nombre = 'Alajuela';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'San Carlos', 'S' FROM provincia WHERE nombre = 'Alajuela';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Zarcero', 'S' FROM provincia WHERE nombre = 'Alajuela';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Sarchí', 'S' FROM provincia WHERE nombre = 'Alajuela';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Upala', 'S' FROM provincia WHERE nombre = 'Alajuela';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Los Chiles', 'S' FROM provincia WHERE nombre = 'Alajuela';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Guatuso', 'S' FROM provincia WHERE nombre = 'Alajuela';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Río Cuarto', 'S' FROM provincia WHERE nombre = 'Alajuela';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Central', 'S' FROM provincia WHERE nombre = 'Cartago';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Paraíso', 'S' FROM provincia WHERE nombre = 'Cartago';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'La Unión', 'S' FROM provincia WHERE nombre = 'Cartago';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Jiménez', 'S' FROM provincia WHERE nombre = 'Cartago';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Turrialba', 'S' FROM provincia WHERE nombre = 'Cartago';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Alvarado', 'S' FROM provincia WHERE nombre = 'Cartago';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Oreamuno', 'S' FROM provincia WHERE nombre = 'Cartago';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'El Guarco', 'S' FROM provincia WHERE nombre = 'Cartago';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Central', 'S' FROM provincia WHERE nombre = 'Heredia';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Barva', 'S' FROM provincia WHERE nombre = 'Heredia';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Santo Domingo', 'S' FROM provincia WHERE nombre = 'Heredia';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Santa Bárbara', 'S' FROM provincia WHERE nombre = 'Heredia';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'San Rafael', 'S' FROM provincia WHERE nombre = 'Heredia';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'San Isidro', 'S' FROM provincia WHERE nombre = 'Heredia';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Belén', 'S' FROM provincia WHERE nombre = 'Heredia';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Flores', 'S' FROM provincia WHERE nombre = 'Heredia';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'San Pablo', 'S' FROM provincia WHERE nombre = 'Heredia';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Sarapiquí', 'S' FROM provincia WHERE nombre = 'Heredia';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Liberia', 'S' FROM provincia WHERE nombre = 'Guanacaste';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Nicoya', 'S' FROM provincia WHERE nombre = 'Guanacaste';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Santa Cruz', 'S' FROM provincia WHERE nombre = 'Guanacaste';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Bagaces', 'S' FROM provincia WHERE nombre = 'Guanacaste';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Carrillo', 'S' FROM provincia WHERE nombre = 'Guanacaste';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Cañas', 'S' FROM provincia WHERE nombre = 'Guanacaste';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Abangares', 'S' FROM provincia WHERE nombre = 'Guanacaste';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Tilarán', 'S' FROM provincia WHERE nombre = 'Guanacaste';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Nandayure', 'S' FROM provincia WHERE nombre = 'Guanacaste';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'La Cruz', 'S' FROM provincia WHERE nombre = 'Guanacaste';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Hojancha', 'S' FROM provincia WHERE nombre = 'Guanacaste';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Central', 'S' FROM provincia WHERE nombre = 'Puntarenas';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Esparza', 'S' FROM provincia WHERE nombre = 'Puntarenas';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Buenos Aires', 'S' FROM provincia WHERE nombre = 'Puntarenas';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Montes De Oro', 'S' FROM provincia WHERE nombre = 'Puntarenas';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Osa', 'S' FROM provincia WHERE nombre = 'Puntarenas';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Quepos', 'S' FROM provincia WHERE nombre = 'Puntarenas';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Golfito', 'S' FROM provincia WHERE nombre = 'Puntarenas';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Coto Brus', 'S' FROM provincia WHERE nombre = 'Puntarenas';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Parrita', 'N' FROM provincia WHERE nombre = 'Puntarenas';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Corredores', 'S' FROM provincia WHERE nombre = 'Puntarenas';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Garabito', 'S' FROM provincia WHERE nombre = 'Puntarenas';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Monteverde', 'N' FROM provincia WHERE nombre = 'Puntarenas';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Puerto Jiménez', 'N' FROM provincia WHERE nombre = 'Puntarenas';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Central', 'S' FROM provincia WHERE nombre = 'Limón';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Pococí', 'S' FROM provincia WHERE nombre = 'Limón';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Siquirres', 'S' FROM provincia WHERE nombre = 'Limón';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Talamanca', 'S' FROM provincia WHERE nombre = 'Limón';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Matina', 'S' FROM provincia WHERE nombre = 'Limón';
INSERT INTO canton (provincia_id, nombre, tiene_distrito)
  SELECT id_provincia, 'Guácimo', 'S' FROM provincia WHERE nombre = 'Limón';

-- Distritos
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Carmen' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Merced' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Hospital' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Catedral' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Zapote' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Francisco De Dos Rios' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Uruca' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Mata Redonda' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Pavas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Hatillo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Sebastián' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Escazú' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Escazú' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Antonio' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Escazú' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Rafael' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Escazú' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Desamparados' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Desamparados' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Miguel' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Desamparados' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Juan De Dios' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Desamparados' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Rafael Arriba' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Desamparados' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Rafael Abajo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Desamparados' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Antonio' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Desamparados' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Frailes' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Desamparados' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Patarra' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Desamparados' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Cristobal' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Desamparados' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Rosario' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Desamparados' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Damas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Desamparados' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Gravilias' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Desamparados' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Los Guido' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Desamparados' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santiago' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Puriscal' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Mercedes Sur' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Puriscal' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Barbacoas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Puriscal' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Grifo Alto' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Puriscal' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Rafael' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Puriscal' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Candelarita' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Puriscal' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Desamparaditos' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Puriscal' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Antonio' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Puriscal' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Chires' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Puriscal' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Marcos' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Tarrazú' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Lorenzo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Tarrazú' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Carlos' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Tarrazú' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Aserrí' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Aserrí' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Tarbaca' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Aserrí' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Vuelta De Jorco' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Aserrí' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Gabriel' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Aserrí' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Legua' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Aserrí' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Monterrey' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Aserrí' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Salitrillos' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Aserrí' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Colón' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Mora' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Guayabo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Mora' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Tabarcia' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Mora' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Piedras Negras' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Mora' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Picagres' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Mora' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Jaris' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Mora' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Guadalupe' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Goicoechea' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Francisco' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Goicoechea' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Calle Blancos' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Goicoechea' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Mata De Platano' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Goicoechea' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Ipís' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Goicoechea' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Rancho Redondo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Goicoechea' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Purral' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Goicoechea' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santa Ana' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santa Ana' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Salitral' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santa Ana' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Pozos' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santa Ana' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Uruca' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santa Ana' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Piedades' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santa Ana' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Brasil' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santa Ana' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Alajuelita' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Alajuelita' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Josecito' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Alajuelita' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Antonio' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Alajuelita' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Concepción' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Alajuelita' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Felipe' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Alajuelita' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Isidro' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Vázquez de Coronado' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Rafael' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Vázquez de Coronado' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Dulce Nombre De Jesus' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Vázquez de Coronado' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Patalillo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Vázquez de Coronado' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Cascajal' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Vázquez de Coronado' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Ignacio' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Acosta' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Guaitil' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Acosta' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Palmichal' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Acosta' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Cangrejal' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Acosta' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Sabanillas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Acosta' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Juan' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Tibás' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Cinco Esquinas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Tibás' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Anselmo Llorente' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Tibás' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Leon XII' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Tibás' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Colima' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Tibás' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Vicente' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Moravia' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Jeronimo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Moravia' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'La Trinidad' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Moravia' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Pedro' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Montes de Oca' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Sabanilla' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Montes de Oca' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Mercedes' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Montes de Oca' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Rafael' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Montes de Oca' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Pablo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Turrubares' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Pedro' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Turrubares' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Juan De Mata' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Turrubares' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Luis' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Turrubares' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Carara' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Turrubares' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santa María' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Dota' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Jardin' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Dota' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Copey' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Dota' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Curridabat' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Curridabat' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Granadilla' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Curridabat' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Sanchez' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Curridabat' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Tirrases' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Curridabat' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Isidro De El General' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Pérez Zeledón' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'El General' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Pérez Zeledón' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Daniel Flores' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Pérez Zeledón' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Rivas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Pérez Zeledón' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Pedro' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Pérez Zeledón' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Platanares' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Pérez Zeledón' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Pejibaye' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Pérez Zeledón' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Cajon' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Pérez Zeledón' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Baru' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Pérez Zeledón' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Rio Nuevo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Pérez Zeledón' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Páramo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Pérez Zeledón' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Pablo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'León Cortés Castro' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Andrés' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'León Cortés Castro' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Llano Bonito' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'León Cortés Castro' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Isidro' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'León Cortés Castro' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santa Cruz' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'León Cortés Castro' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Antonio' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'León Cortés Castro' AND p.nombre = 'San José';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Alajuela' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San José' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Carrizal' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Antonio' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Guácima' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Isidro' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Sabanilla' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Rafael' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Rio Segundo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Desamparados' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Turrucares' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Tambor' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Garita' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Sarapiquí' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Ramón' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Ramón' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santiago' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Ramón' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Juan' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Ramón' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Piedades Norte' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Ramón' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Piedades Sur' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Ramón' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Rafael' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Ramón' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Isidro' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Ramón' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Angeles' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Ramón' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Alfaro' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Ramón' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Volio' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Ramón' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Concepción' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Ramón' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Zapotal' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Ramón' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Peñas Blancas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Ramón' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Grecia' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Grecia' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Isidro' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Grecia' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San José' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Grecia' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Roque' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Grecia' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Tacares' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Grecia' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Puente De Piedra' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Grecia' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Bolívar' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Grecia' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Mateo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Mateo' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Desmonte' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Mateo' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Jesús María' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Mateo' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Labrador' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Mateo' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Atenas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Atenas' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Jesús' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Atenas' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Mercedes' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Atenas' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Isidro' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Atenas' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Concepción' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Atenas' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San José' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Atenas' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santa Eulalia' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Atenas' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Escobal' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Atenas' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Naranjo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Naranjo' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Miguel' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Naranjo' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San José' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Naranjo' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Cirrí Sur' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Naranjo' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Jerónimo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Naranjo' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Juan' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Naranjo' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'El Rosario' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Naranjo' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Palmitos' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Naranjo' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Palmares' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Palmares' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Zaragoza' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Palmares' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Buenos Aires' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Palmares' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santiago' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Palmares' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Candelaria' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Palmares' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Esquipulas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Palmares' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'La Granja' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Palmares' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Pedro' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Poás' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Juan' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Poás' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Rafael' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Poás' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Carrillos' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Poás' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Sabana Redonda' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Poás' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Orotina' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Orotina' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'El Mastate' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Orotina' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Hacienda Vieja' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Orotina' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Coyolar' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Orotina' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'La Ceiba' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Orotina' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Quesada' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Carlos' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Florencia' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Carlos' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Buenavista' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Carlos' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Aguas Zarcas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Carlos' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Venecia' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Carlos' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Pital' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Carlos' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'La Fortuna' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Carlos' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'La Tigra' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Carlos' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'La Palmera' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Carlos' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Venado' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Carlos' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Cutris' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Carlos' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Monterrey' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Carlos' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Pocosol' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Carlos' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Zarcero' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Zarcero' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Laguna' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Zarcero' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Tapesco' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Zarcero' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Guadalupe' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Zarcero' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Palmira' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Zarcero' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Zapote' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Zarcero' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Brisas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Zarcero' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Sarchí Norte' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Sarchí' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Sarchí Sur' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Sarchí' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Toro Amarillo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Sarchí' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Pedro' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Sarchí' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Rodriguez' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Sarchí' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Upala' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Upala' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Aguas Claras' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Upala' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San José o Pizote' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Upala' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Bijagua' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Upala' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Delicias' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Upala' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Dos Rios' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Upala' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Yolillal' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Upala' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Canalete' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Upala' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Los Chiles' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Los Chiles' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Caño Negro' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Los Chiles' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'El Amparo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Los Chiles' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Jorge' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Los Chiles' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Rafael' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Guatuso' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Buenavista' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Guatuso' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Cote' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Guatuso' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Katira' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Guatuso' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Río Cuarto' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Río Cuarto' AND p.nombre = 'Alajuela';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Oriental' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Occidental' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Carmen' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Nicolás' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Aguacaliente o San Francisco' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Guadalupe o Arenilla' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Corralillo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Tierra Blanca' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Dulce Nombre' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Llano Grande' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Quebradilla' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Paraiso' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Paraíso' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santiago' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Paraíso' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Orosi' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Paraíso' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Cachí' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Paraíso' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Llanos de Santa Lucía' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Paraíso' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Tres Rios' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'La Unión' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Diego' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'La Unión' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Juan' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'La Unión' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Rafael' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'La Unión' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Concepción' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'La Unión' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Dulce Nombre' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'La Unión' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Ramón' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'La Unión' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Rio Azul' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'La Unión' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Juan Viñas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Jiménez' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Tucurrique' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Jiménez' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Pejibaye' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Jiménez' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Turrialba' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Turrialba' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'La Suiza' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Turrialba' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Peralta' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Turrialba' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santa Cruz' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Turrialba' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santa Teresita' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Turrialba' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Pavones' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Turrialba' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Tuis' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Turrialba' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Tayutic' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Turrialba' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santa Rosa' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Turrialba' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Tres Equis' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Turrialba' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'La Isabel' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Turrialba' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Chirripó' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Turrialba' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Pacayas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Alvarado' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Cervantes' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Alvarado' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Capellades' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Alvarado' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Rafael' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Oreamuno' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Cot' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Oreamuno' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Potrero Cerrado' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Oreamuno' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Cipreses' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Oreamuno' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santa Rosa' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Oreamuno' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'El Tejar' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'El Guarco' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Isidro' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'El Guarco' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Tobosi' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'El Guarco' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Patio De Agua' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'El Guarco' AND p.nombre = 'Cartago';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Heredia' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Mercedes' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Francisco' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Ulloa' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Varablanca' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Barva' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Barva' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Pedro' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Barva' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Pablo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Barva' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Roque' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Barva' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santa Lucía' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Barva' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San José de la Montaña' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Barva' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santo Domingo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santo Domingo' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Vicente' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santo Domingo' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Miguel' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santo Domingo' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Paracito' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santo Domingo' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santo Tomás' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santo Domingo' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santa Rosa' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santo Domingo' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Tures' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santo Domingo' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Para' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santo Domingo' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santa Bárbara' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santa Bárbara' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Pedro' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santa Bárbara' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Juan' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santa Bárbara' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Jesús' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santa Bárbara' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santo Domingo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santa Bárbara' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Puraba' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santa Bárbara' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Rafael' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Rafael' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Josecito' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Rafael' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santiago' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Rafael' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Los Ángeles' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Rafael' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Concepción' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Rafael' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Isidro' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Isidro' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San José' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Isidro' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Concepción' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Isidro' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Francisco' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Isidro' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Antonio' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Belén' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'La Ribera' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Belén' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'La Asuncion' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Belén' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Joaquín' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Flores' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Barrantes' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Flores' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Llorente' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Flores' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Pablo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Pablo' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Rincon De Sabanilla' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'San Pablo' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Puerto Viejo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Sarapiquí' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'La Virgen' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Sarapiquí' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Las Horquetas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Sarapiquí' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Llanuras Del Gaspar' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Sarapiquí' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Cureña' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Sarapiquí' AND p.nombre = 'Heredia';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Liberia' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Liberia' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Cañas Dulces' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Liberia' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Mayorga' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Liberia' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Nacascolo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Liberia' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Curubande' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Liberia' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Nicoya' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Nicoya' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Mansión' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Nicoya' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Antonio' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Nicoya' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Quebrada Honda' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Nicoya' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Sámara' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Nicoya' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Nosara' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Nicoya' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Belén De Nosarita' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Nicoya' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santa Cruz' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santa Cruz' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Bolson' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santa Cruz' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Veintisiete de Abril' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santa Cruz' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Tempate' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santa Cruz' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Cartagena' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santa Cruz' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Cuajiniquil' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santa Cruz' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Diria' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santa Cruz' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Cabo Velas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santa Cruz' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Tamarindo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Santa Cruz' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Bagaces' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Bagaces' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'La Fortuna' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Bagaces' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Mogote' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Bagaces' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Rio Naranjo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Bagaces' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Filadelfia' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Carrillo' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Palmira' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Carrillo' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Sardinal' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Carrillo' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Belen' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Carrillo' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Cañas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Cañas' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Palmira' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Cañas' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Miguel' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Cañas' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Bebedero' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Cañas' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Porozal' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Cañas' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Las Juntas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Abangares' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Sierra' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Abangares' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Juan' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Abangares' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Colorado' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Abangares' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Tilarán' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Tilarán' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Quebrada Grande' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Tilarán' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Tronadora' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Tilarán' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santa Rosa' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Tilarán' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Líbano' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Tilarán' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Tierras Morenas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Tilarán' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Arenal' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Tilarán' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Carmona' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Nandayure' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santa Rita' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Nandayure' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Zapotal' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Nandayure' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Pablo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Nandayure' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Porvenir' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Nandayure' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Bejuco' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Nandayure' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'La Cruz' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'La Cruz' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santa Cecilia' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'La Cruz' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'La Garita' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'La Cruz' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Santa Elena' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'La Cruz' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Hojancha' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Hojancha' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Monte Romo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Hojancha' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Puerto Carrillo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Hojancha' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Huacas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Hojancha' AND p.nombre = 'Guanacaste';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Puntarenas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Pitahaya' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Chomes' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Lepanto' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Paquera' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Manzanillo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Guacimal' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Barranca' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Monte Verde' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Isla Del Coco' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Cóbano' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Chacarita' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Chira' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Acapulco' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'El Roble' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Arancibia' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Espíritu Santo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Esparza' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Juan Grande' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Esparza' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Macacona' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Esparza' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Rafael' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Esparza' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Jerónimo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Esparza' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Buenos Aires' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Buenos Aires' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Volcán' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Buenos Aires' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Potrero Grande' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Buenos Aires' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Boruca' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Buenos Aires' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Pilas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Buenos Aires' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Colinas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Buenos Aires' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Changuena' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Buenos Aires' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Biolley' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Buenos Aires' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Brunka' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Buenos Aires' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Miramar' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Montes De Oro' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'La Unión' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Montes De Oro' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Isidro' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Montes De Oro' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Puerto Cortés' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Osa' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Palmar' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Osa' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Sierpe' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Osa' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Bahía Ballena' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Osa' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Piedras Blancas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Osa' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Bahía Drake' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Osa' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Quepos' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Quepos' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Savegre' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Quepos' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Naranjito' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Quepos' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Golfito' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Golfito' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Puerto Jiménez' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Golfito' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Guaycara' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Golfito' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Pavón' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Golfito' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'San Vito' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Coto Brus' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Sabalito' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Coto Brus' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Aguabuena' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Coto Brus' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Limoncito' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Coto Brus' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Pittier' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Coto Brus' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Corredor' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Corredores' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'La Cuesta' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Corredores' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Canoas' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Corredores' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Laurel' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Corredores' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Jacó' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Garabito' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Tárcoles' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Garabito' AND p.nombre = 'Puntarenas';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Limón' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Valle La Estrella' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Rio Blanco' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Matama' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Central' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Guapiles' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Pococí' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Jiménez' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Pococí' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Rita' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Pococí' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Roxana' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Pococí' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Cariari' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Pococí' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Colorado' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Pococí' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'La Colonia' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Pococí' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Siquirres' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Siquirres' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Pacuarito' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Siquirres' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Florida' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Siquirres' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Germania' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Siquirres' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'El Cairo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Siquirres' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Alegría' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Siquirres' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Bratsi' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Talamanca' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Sixaola' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Talamanca' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Cahuita' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Talamanca' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Telire' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Talamanca' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Matina' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Matina' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Batán' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Matina' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Carrandi' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Matina' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Guácimo' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Guácimo' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Mercedes' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Guácimo' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Pocora' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Guácimo' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Rio Jiménez' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Guácimo' AND p.nombre = 'Limón';
INSERT INTO distrito (canton_id, nombre)
  SELECT c.id_canton, 'Duacari' FROM canton c JOIN provincia p ON c.provincia_id = p.id_provincia
  WHERE c.nombre = 'Guácimo' AND p.nombre = 'Limón';

COMMIT;