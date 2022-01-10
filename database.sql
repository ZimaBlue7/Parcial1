-- \c para ir o salir de una base de datos
-- \l para ver las bases de datos que tenemos en nuestra propiedad
-- \dt para ver dentro de una base de datos que tablas tenemos
CREATE DATABASE attendance;
--\c into to attendance 
--\c Create table admin 
DROP TABLE if exists admin;
CREATE TABLE admin(
    admin_id SERIAL PRIMARY KEY,
    contraseña VARCHAR(25) NOT NULL,
    asistencia BOOLEAN NOT NULL dafault false;
);
--\c creation of a table admin type, with id and password
--\c insert elements in the table
INSERT INTO admin (admin_id, contraseña, asistencia)
VALUES (id, 'contraseña', true);
--\c visualize the elements in the table 
SELECT id,
    asistencia
FROM admin;
--\c delete the elements case of the example 
DELETE FROM admin
where admin_id = 1;
--\c update dates
UPDATE admin
set asistencia = true
WHERE admin_id = 1;
--\c 
ALTER TABLE table_name
ADD COLUMN IF NOT EXISTS column_name INTEGER;
--\c Create table sedes
CREATE TABLE sedes(
    sede_id SERIAL PRIMARY KEY,
    ubicacion VARCHAR(50),
    nombre VARCHAR(50) NOT NULL
);
--\c comments for keep the order
INSERT INTO sedes (ubicacion, nombre)
VALUES ('ubicacion', 'nombre');
--\c
SELECT *
FROM sedes;
--\c Create table estudiante
CREATE TABLE estudiante(
    codigo_stud INTEGER PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    asistencia BOOLEAN NOT NULL default false
);
--\c
INSERT INTO estudiante (nombre, direccion)
VALUES ('nombre', 'direccion');
--\c
SELECT *
FROM estudiante;
--\c
--\c
CREATE TABLE personal(
    id_per SERIAL PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    direccion VARCHAR(50),
    salario INT,
    eps VARCHAR(15) NOT NULL,
    arl VARCHAR(15) NOT NULL
);
--\c
INSERT INTO personal (nombre, direccion, salario, eps, arl)
VALUES ('nombre', 'direccion', intsalario, 'eps', 'arl');
--\c
SELECT *
FROM personal;
--\c
CREATE TABLE asistencia(
    id_persona INTEGER PRIMARY KEY,
    asistencia BOOLEAN NOT NULL default false,
    fecha DATE NOT NULL,
    hora VARCHAR(10)
);
--\c
INSERT INTO asistencia(id_persona, asistencia, fecha, hora)
VALUES (idpersona, BOOLEAN, date, 'hora');
--\c
SELECT *
FROM asistencia;
--\c
CREATE TABLE curso(
    codigo INTEGER PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);
--\c
INSERT INTO curso (codigo, nombre)
VALUES (intcodigo, 'nombre');
--\c
SELECT *
FROM curso;
--\c